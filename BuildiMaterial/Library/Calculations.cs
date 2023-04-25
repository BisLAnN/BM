using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Library
{
    public class Calculations
    {
        public static string[] AvailablePeriods(TimeSpan[] startTimes, int[] durations, TimeSpan beginWorkingTime, TimeSpan endWorkingTime, int consultationTime)
        {
            TimeSpan[] busyTimes = new TimeSpan[startTimes.Length];
            for (int i = 0; i < startTimes.Length; i++)
            {
                TimeSpan end1 = startTimes[i] + TimeSpan.FromMinutes(durations[i]);
                busyTimes[i] = end1;
            }

            TimeSpan current = beginWorkingTime;
            TimeSpan end = current + TimeSpan.FromMinutes(consultationTime);
            string[] availablePeriods = new string[] { };

            while (end <= endWorkingTime)
            {
                bool isBusy = false;

                for (int i = 0; i < busyTimes.Length; i++)
                {
                    if (current <= busyTimes[i] && end >= startTimes[i])
                    {
                        isBusy = true;
                        break;
                    }
                }

                if (!isBusy)
                {
                    Array.Resize(ref availablePeriods, availablePeriods.Length + 1);
                    availablePeriods[availablePeriods.Length - 1] = current.ToString(@"HH\:mm") + "-" + end.ToString(@"HH\:mm");
                }

                current += TimeSpan.FromMinutes(consultationTime);
                end = current + TimeSpan.FromMinutes(consultationTime);
            }

            return availablePeriods;
        }
    }
}
