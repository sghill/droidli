Timber
######

:date: 2013-12-01
:tags: logging
:summary: @JakeWharton's Timber makes logging nicer.

Timber_ is a logging library from `@JakeWharton`_ with two features
that make including it in your next Android project an easy decision:

1. tag inference
2. easy-to-swap implementations

Tag Inference
=============

The `official Android docs`_ are great for getting started with Android.
Unfortunately, every place a developer logs is another place to define a static
tag variable somewhere.

.. code-block:: java

    package li.droid.example;

    import android.util.Log;

    public class TimberActivity extends android.app.Activity {
        private static final String TAG = TimberActivity.class.getSimpleName();

        @Override public void onCreate(android.os.Bundle saveInstanceState) {
            super.onCreate(savedInstanceState);
            Log.i(TAG, "in onCreate!");
        }
    }

With Timber, we shed a line of code and a parameter.

.. code-block:: java

    package li.droid.example;

    import timber.log.Timber;

    public class TimberActivity extends android.app.Activity {
        @Override public void onCreate(android.os.Bundle saveInstanceState) {
            super.onCreate(savedInstanceState);
            Timber.i("in onCreate!");
        }
    }

Easy-to-Swap Implementations
============================

There are many reasons to log a *lot* of information in development. I know I'd
always rather have too much information than too little when implementing new 
features or troubleshooting why something doesn't work the way I expect. All
this goes out the window when we head to production, however. Logging in
production impacts performance, and the information that comes back to us is 
several orders of magnitude lower.

If you stick to the standard ``android.util.Log`` implementation, there is no
discerning which environment you're in. A call to Log happens in every 
environment. Timber steps in to fill the gap here very well, and takes the
opportunity to extend its tree metaphor further.

A ``Timber.HollowTree`` is typically used in production, and every operation is
a no-op by default. This can be overridden to only act on the levels the
developer cares about. The ``Timber.DebugTree`` does just what you'd expect --
writing out every statement to Android's log service.

An overridden ``android.app.Application`` class is the perfect spot to
implement this switching logic, as covered in the `Timber sample project`_.

Summary
=======

Though small, Timber is a library that punches well above its weight. It's a
must-have for all my Android projects now and most certainly worth the time to
look at.

Vitals
------

+----------------+-----------------------------------------------------------------+
| Version        | 2.0.0                                                           |
+----------------+-----------------------------------------------------------------+
| MavenCentral   | Yes                                                             |
+----------------+-----------------------------------------------------------------+
| Source         | https://github.com/JakeWharton/timber                           |
+----------------+-----------------------------------------------------------------+
| Sample Project | https://github.com/JakeWharton/timber/tree/master/timber-sample |
+----------------+-----------------------------------------------------------------+ 
| Mailing List   | No                                                              |
+----------------+-----------------------------------------------------------------+
| IRC            | No                                                              |
+----------------+-----------------------------------------------------------------+

.. _Timber: https://github.com/JakeWharton/timber
.. _@JakeWharton: https://twitter.com/JakeWharton
.. _`official Android docs`: https://developer.android.com/reference/android/util/Log.html
.. _`Timber sample project`: https://github.com/JakeWharton/timber/blob/master/timber-sample/src/main/java/com/example/timber/ExampleApp.java 
