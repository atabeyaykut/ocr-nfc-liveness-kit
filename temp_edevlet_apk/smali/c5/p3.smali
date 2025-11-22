.class public final Lc5/p3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final synthetic e:Lc5/s3;


# direct methods
.method public synthetic constructor <init>(Lc5/s3;J)V
    .locals 2

    iput-object p1, p0, Lc5/p3;->e:Lc5/s3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "health_monitor"

    invoke-static {p1}, Lr3/r;->f(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lr3/r;->a(Z)V

    const-string p1, "health_monitor:start"

    iput-object p1, p0, Lc5/p3;->a:Ljava/lang/String;

    const-string p1, "health_monitor:count"

    iput-object p1, p0, Lc5/p3;->b:Ljava/lang/String;

    const-string p1, "health_monitor:value"

    iput-object p1, p0, Lc5/p3;->c:Ljava/lang/String;

    iput-wide p2, p0, Lc5/p3;->d:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lc5/p3;->e:Lc5/s3;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc5/x4;->b()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lc5/x4;->a:Lc5/z4;

    .line 7
    .line 8
    check-cast v1, Lc5/i4;

    .line 9
    .line 10
    iget-object v1, v1, Lc5/i4;->p:Lc5/w;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    invoke-virtual {v0}, Lc5/s3;->g()Landroid/content/SharedPreferences;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v3, p0, Lc5/p3;->b:Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lc5/p3;->c:Ljava/lang/String;

    .line 33
    .line 34
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 35
    .line 36
    .line 37
    iget-object v3, p0, Lc5/p3;->a:Ljava/lang/String;

    .line 38
    .line 39
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 43
    .line 44
    .line 45
    return-void
.end method
