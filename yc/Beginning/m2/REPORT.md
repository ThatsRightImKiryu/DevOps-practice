<style>
    h2 {
        color: rgb(10, 255, 255);
        font-weight: 1000;
    }

    h3 {
        color: rgb(175, 255, 255);
        font-weight: 700;
    }
    p {
        font-style: oblique;
        font-weight: 100;
        color: white;
    }
    img {
        border-radius: 15px;
    }

    .box {
        position: relative;
        display: block;
        background: linear-gradient(0deg, black, #444444);
        border-radius: 15px;
    }
    .glowing::before{
        border-radius: 15px;
        content: '';
        position: absolute;
        left: -2px;
        top: -2px;
        background: linear-gradient(45deg, #e8f74d, #ff6600d9, #00ff66, #13ff13, #ad27ad, #bd2681, #6512b9, #ff3300de, #5aabde);
        background-size: 400%;
        width: calc(100% + 5px);
        height: calc(100% + 5px);
        z-index: -1;
        animation: glower 20s linear infinite;
        }

    @keyframes glower {
        0% {
            background-position: 0 0;
        }
        
        50% {
            background-position: 400% 0;
        }
        
        100% {
            background-position: 0 0;
        }
    }

</style>

<h2>Reporting of Module II "YC Introduction"</h2></br>

<h3><u>Creating VMs</u></h3>
    <p>Creating CentOS VM</p>
    <div class="box glowing"><img src="creating-vms/created-centos-5p.png"></div></br>

<p>Monitoring page</p>
    <div class="box glowing"><img src="creating-vms/monitor-vm2.png"></div></br>

<p>Result creating two VMs page</b>
    <div class="box glowing"><img src="creating-vms/created-two-vms.png">
    </div></br>

<p>Creating compute instances is a simplest task to do in YC.</p>

<h3><u>Metadata</u></h3>
<p>Adding metadata to instance via YC CLI.</p>
    <div class="box glowing"><img src="metadata/add-yc-cli-metadata-vm2.png"></div></br>

<p>Getting metadata from inside of VM.</p>
    <div class="box glowing"><img src="metadata/get-metadata-inside-vm2.png"></div></br>

<p>Removing metadata.</b>
    <div class="box glowing"><img src="metadata/remove-yc-cli-metadata-vm2.png"></div></br>

<p>Metadata in YC Web.</b>
    <div class="box glowing"><img src="metadata/result-add-metadata-vm2.png"></div></br>

<p>Result in removing metadata i YC Web.</b>
    <div class="box glowing"><img src="metadata/result-remove-yc-cli-metadata-vm2.png.png"></div></br>


<h3><u>Serial console and port</u></h3>
<p>Serial console in YC Web.</p>
    <div class="box glowing"><img src="serial-console-and-ssh/serial-console-browser-yc.png"></div></br>

<p>Serial console in ssh.</p>
    <div class="box glowing"><img src="serial-console-and-ssh/serial-console-ssh.png"></div></br>

<p>SSH connection and scp result.</p>
    <div class="box glowing"><img src="serial-console-and-ssh/ssh-connection-and-scp.png"></div></br>


<h2>Summarization</h2>
<p>This module is a introduction to YC, so it's so simple to create VM and to switch between pages and services. Adding metadata allows to bring some additional information to vm and other object stroing in cloud. Also serial console has some extra connection for VM.</p>