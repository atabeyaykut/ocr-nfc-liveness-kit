.class public final Ljd/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# instance fields
.field public final a:Lgd/e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public c:I

.field public final d:Ljd/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljd/a;->c:I

    new-instance v0, Ljd/a$a;

    invoke-direct {v0, p0}, Ljd/a$a;-><init>(Ljd/a;)V

    iput-object v0, p0, Ljd/a;->d:Ljd/a$a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ljd/a;->b:Landroid/content/Context;

    invoke-static {p1}, Lgd/e;->g(Landroid/content/Context;)Lgd/e;

    move-result-object v0

    iput-object v0, p0, Ljd/a;->a:Lgd/e;

    check-cast p1, Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ljd/a;->a:Lgd/e;

    .line 2
    .line 3
    iget-boolean v1, v0, Lgd/e;->l:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const-string v1, "We have inferred by "

    .line 8
    .line 9
    const-string v2, " that we are in the background."

    .line 10
    .line 11
    invoke-static {v1, p1, v2}, Landroidx/browser/browseractions/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v1, 0x0

    .line 16
    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    .line 18
    const-string v2, "BackgroundPowerSaver"

    .line 19
    .line 20
    invoke-static {v2, p1, v1}, Lid/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    invoke-virtual {v0, p1}, Lgd/e;->k(Z)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    .line 1
    iget v0, p0, Ljd/a;->c:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    sub-int/2addr v0, v1

    .line 5
    iput v0, p0, Ljd/a;->c:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object p1, v2, v3

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    aput-object p1, v2, v1

    .line 18
    .line 19
    const-string p1, "activity paused: %s active activities: %s"

    .line 20
    .line 21
    const-string v0, "BackgroundPowerSaver"

    .line 22
    .line 23
    invoke-static {v0, p1, v2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget p1, p0, Ljd/a;->c:I

    .line 27
    .line 28
    if-ge p1, v1, :cond_0

    .line 29
    .line 30
    const-string p1, "setting background mode"

    .line 31
    .line 32
    new-array v2, v3, [Ljava/lang/Object;

    .line 33
    .line 34
    invoke-static {v0, p1, v2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Ljd/a;->a:Lgd/e;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    new-array v0, v3, [Ljava/lang/Object;

    .line 43
    .line 44
    const-string v2, "BeaconManager"

    .line 45
    .line 46
    const-string v3, "API setBackgroundMode true"

    .line 47
    .line 48
    invoke-static {v2, v3, v0}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v1}, Lgd/e;->k(Z)V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 7

    .line 1
    iget v0, p0, Ljd/a;->c:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Ljd/a;->c:I

    .line 6
    .line 7
    const-string v2, "BackgroundPowerSaver"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    new-array v4, v1, [Ljava/lang/Object;

    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    aput-object v0, v4, v3

    .line 19
    .line 20
    const-string v0, "reset active activity count on resume.  It was %s"

    .line 21
    .line 22
    invoke-static {v2, v0, v4}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iput v1, p0, Ljd/a;->c:I

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Ljd/a;->a:Lgd/e;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    new-array v4, v3, [Ljava/lang/Object;

    .line 33
    .line 34
    const-string v5, "BeaconManager"

    .line 35
    .line 36
    const-string v6, "API setBackgroundMode false"

    .line 37
    .line 38
    invoke-static {v5, v6, v4}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v3}, Lgd/e;->k(Z)V

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x2

    .line 45
    new-array v0, v0, [Ljava/lang/Object;

    .line 46
    .line 47
    aput-object p1, v0, v3

    .line 48
    .line 49
    iget p1, p0, Ljd/a;->c:I

    .line 50
    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    aput-object p1, v0, v1

    .line 56
    .line 57
    const-string p1, "activity resumed: %s active activities: %s"

    .line 58
    .line 59
    invoke-static {v2, p1, v0}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Ljd/a;->b:Landroid/content/Context;

    .line 63
    .line 64
    invoke-static {p1}, Lgd/e;->g(Landroid/content/Context;)Lgd/e;

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
