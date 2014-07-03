============
Installation
============

To start using Waffle, you need to add it to your ``INSTALLED_APPS`` and
``MIDDLEWARE_CLASSES``, and make sure to add the ``request`` context
processor::

    TEMPLATE_CONTEXT_PROCESSORS = (
        # ...
        'django.core.context_processors.request',
        # ...
    )

    INSTALLED_APPS = (
        # ...
        'waffle',
        # ...
    )

    MIDDLEWARE_CLASSES = (
        # ...
        'waffle.middleware.WaffleMiddleware',
        # ...
    )

Since Waffle will be setting cookies on response objects, you probably
want it *below* any middleware that tweaks cookies before sending them
out.


Requirements
============

Waffle supports the following versions of Django and Python:

* **Django 1.4 (LTS)** - Python 2.6, 2.7
* **Django 1.5** - Python 2.6, 2.7, 3.2, 3.3
* **Django 1.6** - Python 2.6, 2.7, 3.2, 3.3
* **Django 1.7** - Python 2.7, 3.2, 3.3, 3.4

Waffle supports South_ for versions of Django before 1.7. You should
upgrade to South 1.0 if at all possible. If not, you can use the
```SOUTH_MIGRATION_MODULES`` <http://south.readthedocs.org/en/0.7.6/settings.html#south-migration-modules>`_

.. _South: http://south.aeracode.org/
