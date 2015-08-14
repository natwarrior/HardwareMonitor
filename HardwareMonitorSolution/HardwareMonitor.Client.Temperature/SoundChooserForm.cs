﻿using HardwareMonitor.Client.Temperature.Utils;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HardwareMonitor.Client.Temperature
{
    public partial class SoundChooserForm : Form
    {
        public SoundChooserForm()
        {
            InitializeComponent();
            CenterToParent();
        }

        private void SoundChooserForm_Load_1(object sender, EventArgs e)
        {
            soundResourcesRadioListBox1.Load(SoundResourcesManager.INSTANCE.GetResourcesList());
            if (SoundResourcesManager.INSTANCE.SelectedSound != null)
            {
                var index = SoundResourcesManager.INSTANCE.GetResourcesList().IndexOf(SoundResourcesManager.INSTANCE.SelectedSound);
                if (index >= 0) soundResourcesRadioListBox1.SetSelected(index, true);
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var resource = soundResourcesRadioListBox1.SelectedItem as ResourcePlayer;
            resource.Stop();
            SoundResourcesManager.INSTANCE.SelectedSound = resource;
        }
    }
}
