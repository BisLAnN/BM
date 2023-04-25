using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Library
{
    public class Class1
    {
        public class Calculations
        {
            public static string[] AvailablePeriods(TimeSpan[] startTimes, int[] durations, TimeSpan beginWorkingTime, TimeSpan endWorkingTime, int consultationTime)
            {
                if (startTimes == null || durations == null || startTimes.Length != durations.Length)
                {
                    throw new ArgumentException("Ошибка!");
                }

                int consultationsPerDay = (int)(endWorkingTime - beginWorkingTime).TotalMinutes / consultationTime;

                TimeSpan[] consultations = new TimeSpan[consultationsPerDay * 2];
                for (int i = 0; i < consultationsPerDay; i++)
                {
                    TimeSpan start = beginWorkingTime + TimeSpan.FromMinutes(i * consultationTime);
                    TimeSpan end = start + TimeSpan.FromMinutes(consultationTime);
                    consultations[i * 2] = start;
                    consultations[i * 2 + 1] = end;
                }

                var freePeriods = new List<TimeSpan[]>();

                for (int i = 0; i < startTimes.Length; i++)
                {
                    TimeSpan startTime = startTimes[i];
                    TimeSpan endTime = startTimes[i] + TimeSpan.FromMinutes(durations[i]);

                    if (endTime <= beginWorkingTime || startTime >= endWorkingTime)
                    {
                        continue;
                    }

                    int startConsultationIndex = (int)Math.Ceiling(startTime.Subtract(beginWorkingTime).TotalMinutes / consultationTime);

                    int endConsultationIndex = (int)Math.Floor(endTime.Subtract(beginWorkingTime).TotalMinutes / consultationTime);

                    bool[] busyConsultations = new bool[consultationsPerDay];
                    for (int j = startConsultationIndex; j <= endConsultationIndex; j++)
                    {
                        busyConsultations[j] = true;
                    }

                    for (int j = 0; j < freePeriods.Count; j++)
                    {
                        TimeSpan[] freePeriod = freePeriods[j];

                        for (int k = 0; k < consultationsPerDay; k++)
                        {
                            TimeSpan start = freePeriod[0] + TimeSpan.FromMinutes(k * consultationTime);
                            TimeSpan end = start + TimeSpan.FromMinutes(consultationTime);

                            if (busyConsultations[k])
                            {
                                freePeriods.RemoveAt(j);
                                j--;
                                break;
                            }
                            else if (start >= startTime && end <= endTime)
                            {
                                freePeriod[0] = start;
                                freePeriod[1] = end;
                            }
                        }
                    }

                    for (int j = startConsultationIndex; j <= endConsultationIndex; j++)
                    {
                        if (!busyConsultations[j])
                        {
                            TimeSpan start = beginWorkingTime + TimeSpan.FromMinutes(j * consultationTime);
                            TimeSpan end = start + TimeSpan.FromMinutes(consultationTime);
                            freePeriods.Add(new TimeSpan[] { start, end });
                        }
                    }
                }

                freePeriods.Sort((a, b) => a[0].CompareTo(b[0]));

                var result = new List<string>();
                foreach (var period in freePeriods)
                {
                    result.Add(period[0].ToString(@"hh\:mm") + "-" + period[1].ToString(@"hh\:mm"));
                }
                return result.ToArray();
            }
        }
    }
}
