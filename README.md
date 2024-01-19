	<h3>Yandex Cloud Course "Cloud Engineer"</h3>
	<b>Begging of course "Cloud engineer"</b> </br>
		<i>Learnt basics of:</i>
		<ul>
			<li>Creating VMs and connection to them;</li>
			<li>Creating recovery of disk and VMs;</li>
			<li>Creating taget groups and instance groups;</li>
			<li>Networking: IPs, routing;</li>
			<li>Load balancing(interesting one).</li>
		</ul>
	<b>Data Analyze in "Cloud engineer"</b>
		<ul>
			<li>Creating clusters;</li>
			<li>Creating and configuring object storage;</li>
		</ul>


<h3>Zabbix</h3>
It is a system solution for monitoring servers. </br>
The architecture consists of:
<ul>
	<li>Server;</li>
	<li>Web interface;</li>
	<li>Proxy;</li>
	<li>Agent (optional);</li>
	<li>DB.</li>
</ul>

<p>
	Zabbix is <u>lightweight</u>, easy to configure initially, and has powerful functionality when working with distributed monitoring.</br>
	For example, using Pacemaker/Corosync, DRBD together to manage nodes.</br>
	Or use encryption via ssh.</br>
</p>
But Zabbix has several <i>disadvantages</i>:
<ol type="1">
	<li>No encryption; Fixed by protocols like ssh;</li>
	<li>Requires heavy configuration to increase functionality. For example, setting up high availability clusters;</li>
	<li>When working, it requires the deployment of more complex databases, such as PostgreSQL or MySQL;</li>
	<li>The database also requires partitioning to store monitoring data and process it faster.</li>
</ol>
