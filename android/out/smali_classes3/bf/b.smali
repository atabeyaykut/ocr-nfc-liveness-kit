.class public final Lbf/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk9/a;


# direct methods
.method public static a(Lvd/d;)Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lb6/a;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 5
    .line 6
    sget-object p0, Lb6/a;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 7
    .line 8
    if-nez p0, :cond_1

    .line 9
    .line 10
    sget-object p0, Lb6/a;->b:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    sget-object v0, Lb6/a;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lx5/c;->b()Lx5/c;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lx5/c;->a()V

    .line 22
    .line 23
    .line 24
    iget-object v0, v0, Lx5/c;->a:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lb6/a;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    :cond_0
    monitor-exit p0

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    monitor-exit p0

    .line 36
    throw v0

    .line 37
    :cond_1
    :goto_0
    sget-object p0, Lb6/a;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 38
    .line 39
    invoke-static {p0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-object p0
.end method
