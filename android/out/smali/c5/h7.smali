.class public final Lc5/h7;
.super Lc5/j7;
.source "SourceFile"


# instance fields
.field public final d:Landroid/app/AlarmManager;

.field public e:Lc5/g7;

.field public f:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lc5/o7;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lc5/j7;-><init>(Lc5/o7;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lc5/x4;->a:Lc5/z4;

    .line 5
    .line 6
    check-cast p1, Lc5/i4;

    .line 7
    .line 8
    iget-object p1, p1, Lc5/i4;->a:Landroid/content/Context;

    .line 9
    .line 10
    const-string v0, "alarm"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/app/AlarmManager;

    .line 17
    .line 18
    iput-object p1, p0, Lc5/h7;->d:Landroid/app/AlarmManager;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc5/h7;->d:Landroid/app/AlarmManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lc5/h7;->n()Landroid/app/PendingIntent;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/16 v1, 0x18

    .line 15
    .line 16
    if-lt v0, v1, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 19
    .line 20
    check-cast v0, Lc5/i4;

    .line 21
    .line 22
    iget-object v0, v0, Lc5/i4;->a:Landroid/content/Context;

    .line 23
    .line 24
    const-string v1, "jobscheduler"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/app/job/JobScheduler;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Lc5/h7;->h()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc5/j7;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 5
    .line 6
    move-object v1, v0

    .line 7
    check-cast v1, Lc5/i4;

    .line 8
    .line 9
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 10
    .line 11
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 12
    .line 13
    .line 14
    const-string v2, "Unscheduling upload"

    .line 15
    .line 16
    iget-object v1, v1, Lc5/e3;->p:Lc5/c3;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lc5/h7;->d:Landroid/app/AlarmManager;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lc5/h7;->n()Landroid/app/PendingIntent;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0}, Lc5/h7;->o()Lc5/l;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lc5/l;->a()V

    .line 37
    .line 38
    .line 39
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 40
    .line 41
    const/16 v2, 0x18

    .line 42
    .line 43
    if-lt v1, v2, :cond_1

    .line 44
    .line 45
    check-cast v0, Lc5/i4;

    .line 46
    .line 47
    iget-object v0, v0, Lc5/i4;->a:Landroid/content/Context;

    .line 48
    .line 49
    const-string v1, "jobscheduler"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroid/app/job/JobScheduler;

    .line 56
    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    invoke-virtual {p0}, Lc5/h7;->h()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void
.end method

.method public final h()I
    .locals 3

    .line 1
    iget-object v0, p0, Lc5/h7;->f:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 6
    .line 7
    check-cast v0, Lc5/i4;

    .line 8
    .line 9
    iget-object v0, v0, Lc5/i4;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const-string v2, "measurement"

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 33
    .line 34
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lc5/h7;->f:Ljava/lang/Integer;

    .line 46
    .line 47
    :cond_1
    iget-object v0, p0, Lc5/h7;->f:Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    return v0
.end method

.method public final n()Landroid/app/PendingIntent;
    .locals 4

    .line 1
    iget-object v0, p0, Lc5/x4;->a:Lc5/z4;

    .line 2
    .line 3
    check-cast v0, Lc5/i4;

    .line 4
    .line 5
    iget-object v0, v0, Lc5/i4;->a:Landroid/content/Context;

    .line 6
    .line 7
    new-instance v1, Landroid/content/Intent;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "com.google.android.gms.measurement.AppMeasurementReceiver"

    .line 13
    .line 14
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "com.google.android.gms.measurement.UPLOAD"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sget v2, Lcom/google/android/gms/internal/measurement/o0;->a:I

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static {v0, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method

.method public final o()Lc5/l;
    .locals 2

    .line 1
    iget-object v0, p0, Lc5/h7;->e:Lc5/g7;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lc5/g7;

    .line 6
    .line 7
    iget-object v1, p0, Lc5/i7;->b:Lc5/o7;

    .line 8
    .line 9
    iget-object v1, v1, Lc5/o7;->m:Lc5/i4;

    .line 10
    .line 11
    invoke-direct {v0, p0, v1}, Lc5/g7;-><init>(Lc5/h7;Lc5/i4;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lc5/h7;->e:Lc5/g7;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lc5/h7;->e:Lc5/g7;

    .line 17
    .line 18
    return-object v0
.end method
