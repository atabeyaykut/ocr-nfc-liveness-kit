.class public final Lkd/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Z

.field public b:J

.field public c:Lgd/c;

.field public transient d:Lkd/i;

.field public e:I

.field public f:J

.field public g:J


# direct methods
.method public constructor <init>(Lgd/c;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkd/g;->a:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lkd/g;->b:J

    const/4 v2, 0x0

    iput-object v2, p0, Lkd/g;->d:Lkd/i;

    const/4 v2, 0x0

    iput v2, p0, Lkd/g;->e:I

    iput-wide v0, p0, Lkd/g;->f:J

    iput-wide v0, p0, Lkd/g;->g:J

    invoke-virtual {p0, p1}, Lkd/g;->c(Lgd/c;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lkd/g;->b()Lkd/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lkd/i;->a()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "RangedBeacon"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lkd/g;->b()Lkd/i;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Lkd/i;->b()D

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    iget-object v0, p0, Lkd/g;->c:Lgd/c;

    .line 23
    .line 24
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    iput-object v5, v0, Lgd/c;->k:Ljava/lang/Double;

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    iput-object v5, v0, Lgd/c;->d:Ljava/lang/Double;

    .line 32
    .line 33
    iget-object v0, p0, Lkd/g;->c:Lgd/c;

    .line 34
    .line 35
    invoke-virtual {p0}, Lkd/g;->b()Lkd/i;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-interface {v5}, Lkd/i;->d()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    iput v5, v0, Lgd/c;->h:I

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    new-array v0, v0, [Ljava/lang/Object;

    .line 47
    .line 48
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    aput-object v3, v0, v2

    .line 53
    .line 54
    const-string v3, "calculated new runningAverageRssi: %s"

    .line 55
    .line 56
    invoke-static {v1, v3, v0}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const-string v0, "No measurements available to calculate running average"

    .line 61
    .line 62
    new-array v3, v2, [Ljava/lang/Object;

    .line 63
    .line 64
    invoke-static {v1, v0, v3}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    iget-object v0, p0, Lkd/g;->c:Lgd/c;

    .line 68
    .line 69
    iget v1, p0, Lkd/g;->e:I

    .line 70
    .line 71
    iput v1, v0, Lgd/c;->j:I

    .line 72
    .line 73
    iget-wide v3, p0, Lkd/g;->f:J

    .line 74
    .line 75
    iput-wide v3, v0, Lgd/c;->t:J

    .line 76
    .line 77
    iget-wide v3, p0, Lkd/g;->g:J

    .line 78
    .line 79
    iput-wide v3, v0, Lgd/c;->v:J

    .line 80
    .line 81
    iput v2, p0, Lkd/g;->e:I

    .line 82
    .line 83
    const-wide/16 v0, 0x0

    .line 84
    .line 85
    iput-wide v0, p0, Lkd/g;->f:J

    .line 86
    .line 87
    iput-wide v0, p0, Lkd/g;->g:J

    .line 88
    .line 89
    return-void
.end method

.method public final b()Lkd/i;
    .locals 4

    const-class v0, Lkd/j;

    iget-object v1, p0, Lkd/g;->d:Lkd/i;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lgd/e;->x:Lgd/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    aget-object v2, v2, v1

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkd/i;

    iput-object v2, p0, Lkd/g;->d:Lkd/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lgd/e;->x:Lgd/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "RangedBeacon"

    const-string v1, "Could not construct RssiFilterImplClass %s"

    invoke-static {v0, v1, v2}, Lid/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lkd/g;->d:Lkd/i;

    return-object v0
.end method

.method public final c(Lgd/c;)V
    .locals 6

    .line 1
    iget v0, p0, Lkd/g;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Lkd/g;->e:I

    .line 6
    .line 7
    iput-object p1, p0, Lkd/g;->c:Lgd/c;

    .line 8
    .line 9
    iget-wide v2, p0, Lkd/g;->f:J

    .line 10
    .line 11
    const-wide/16 v4, 0x0

    .line 12
    .line 13
    cmp-long v0, v2, v4

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-wide v2, p1, Lgd/c;->t:J

    .line 18
    .line 19
    iput-wide v2, p0, Lkd/g;->f:J

    .line 20
    .line 21
    :cond_0
    iget-wide v2, p1, Lgd/c;->v:J

    .line 22
    .line 23
    iput-wide v2, p0, Lkd/g;->g:J

    .line 24
    .line 25
    iget p1, p1, Lgd/c;->e:I

    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/16 v2, 0x7f

    .line 36
    .line 37
    if-eq v0, v2, :cond_1

    .line 38
    .line 39
    iput-boolean v1, p0, Lkd/g;->a:Z

    .line 40
    .line 41
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    iput-wide v0, p0, Lkd/g;->b:J

    .line 46
    .line 47
    invoke-virtual {p0}, Lkd/g;->b()Lkd/i;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v0, p1}, Lkd/i;->c(Ljava/lang/Integer;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void
.end method
