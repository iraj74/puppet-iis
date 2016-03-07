Installing Module in Master
===========================

```bash
puppet module install puppet-iis
```

Pair Agent With Master
======================

Agent
-----

```bash
puppet agent --server <server-hostname> --test
```

Master
------

```bash
puppet ca list
puppet cert sign <cert-name>
````

Install IIS PowerShell Module in Agent
======================================

Visit this [link|http://www.solarwinds.com/documentation/en/flarehelp/sam/content/samagappiisinstallps.htm]


Apply IIS Module in Agent
=========================


```bash
puppet agent --server <server-hostname> --test
```

