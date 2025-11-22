.class public final Lh6/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh6/b0$a;
    }
.end annotation


# instance fields
.field public final a:Lh6/b0$a;

.field public final b:Lo6/d;

.field public final c:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public final d:Le6/a;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lh6/k;Lo6/c;Ljava/lang/Thread$UncaughtExceptionHandler;Le6/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh6/b0;->a:Lh6/b0$a;

    iput-object p2, p0, Lh6/b0;->b:Lo6/d;

    iput-object p3, p0, Lh6/b0;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lh6/b0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lh6/b0;->d:Le6/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Thread;Ljava/lang/Throwable;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "FirebaseCrashlytics"

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, "Crashlytics will not record uncaught exception; null thread"

    .line 8
    .line 9
    invoke-static {v2, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    if-nez p2, :cond_1

    .line 14
    .line 15
    const-string p1, "Crashlytics will not record uncaught exception; null throwable"

    .line 16
    .line 17
    invoke-static {v2, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    .line 19
    .line 20
    return v1

    .line 21
    :cond_1
    iget-object p1, p0, Lh6/b0;->d:Le6/a;

    .line 22
    .line 23
    invoke-interface {p1}, Le6/a;->b()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/4 p2, 0x1

    .line 28
    if-eqz p1, :cond_4

    .line 29
    .line 30
    const/4 p1, 0x3

    .line 31
    invoke-static {v2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/4 p2, 0x0

    .line 39
    :goto_0
    if-eqz p2, :cond_3

    .line 40
    .line 41
    const-string p1, "Crashlytics will not record uncaught exception; native crash exists for session."

    .line 42
    .line 43
    invoke-static {v2, p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .line 45
    .line 46
    :cond_3
    return v1

    .line 47
    :cond_4
    return p2
.end method

.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lh6/b0;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2
    .line 3
    const-string v1, "Completed exception processing. Invoking default exception handler."

    .line 4
    .line 5
    const-string v2, "FirebaseCrashlytics"

    .line 6
    .line 7
    iget-object v3, p0, Lh6/b0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    .line 12
    .line 13
    const/4 v5, 0x3

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lh6/b0;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)Z

    .line 17
    .line 18
    .line 19
    move-result v8

    .line 20
    if-eqz v8, :cond_0

    .line 21
    .line 22
    iget-object v8, p0, Lh6/b0;->a:Lh6/b0$a;

    .line 23
    .line 24
    iget-object v9, p0, Lh6/b0;->b:Lo6/d;

    .line 25
    .line 26
    check-cast v8, Lh6/k;

    .line 27
    .line 28
    invoke-virtual {v8, v9, p1, p2}, Lh6/k;->a(Lo6/d;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception v8

    .line 33
    goto :goto_6

    .line 34
    :catch_0
    move-exception v8

    .line 35
    goto :goto_3

    .line 36
    :cond_0
    const-string v8, "Uncaught exception will not be recorded by Crashlytics."

    .line 37
    .line 38
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 39
    .line 40
    .line 41
    move-result v9

    .line 42
    if-eqz v9, :cond_1

    .line 43
    .line 44
    const/4 v9, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v9, 0x0

    .line 47
    :goto_0
    if-eqz v9, :cond_2

    .line 48
    .line 49
    invoke-static {v2, v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_1
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_3

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    const/4 v4, 0x0

    .line 60
    :goto_2
    if-eqz v4, :cond_5

    .line 61
    .line 62
    goto :goto_5

    .line 63
    :goto_3
    :try_start_1
    const-string v9, "An error occurred in the uncaught exception handler"

    .line 64
    .line 65
    invoke-static {v2, v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .line 67
    .line 68
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_4

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_4
    const/4 v4, 0x0

    .line 76
    :goto_4
    if-eqz v4, :cond_5

    .line 77
    .line 78
    :goto_5
    invoke-static {v2, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .line 80
    .line 81
    :cond_5
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :goto_6
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_6

    .line 93
    .line 94
    goto :goto_7

    .line 95
    :cond_6
    const/4 v4, 0x0

    .line 96
    :goto_7
    if-eqz v4, :cond_7

    .line 97
    .line 98
    invoke-static {v2, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .line 100
    .line 101
    :cond_7
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 105
    .line 106
    .line 107
    throw v8
.end method
