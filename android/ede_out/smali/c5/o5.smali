.class public final Lc5/o5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc5/v5;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lc5/o5;->a:I

    .line 1
    iput-object p1, p0, Lc5/o5;->f:Ljava/lang/Object;

    iput-object p2, p0, Lc5/o5;->e:Ljava/lang/Object;

    iput-object p3, p0, Lc5/o5;->b:Ljava/lang/String;

    iput-object p4, p0, Lc5/o5;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lc5/o5;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/y0;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lc5/o5;->a:I

    .line 2
    iput-object p1, p0, Lc5/o5;->f:Ljava/lang/Object;

    iput-object p2, p0, Lc5/o5;->e:Ljava/lang/Object;

    iput-object p3, p0, Lc5/o5;->b:Ljava/lang/String;

    iput-object p4, p0, Lc5/o5;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lc5/o5;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lc5/o5;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lc5/o5;->e:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v3, p0, Lc5/o5;->f:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :pswitch_0
    check-cast v3, Lc5/v5;

    .line 13
    .line 14
    iget-object v0, v3, Lc5/x4;->a:Lc5/z4;

    .line 15
    .line 16
    check-cast v0, Lc5/i4;

    .line 17
    .line 18
    invoke-virtual {v0}, Lc5/i4;->s()Lc5/t6;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    move-object v5, v2

    .line 23
    check-cast v5, Ljava/util/concurrent/atomic/AtomicReference;

    .line 24
    .line 25
    iget-object v6, p0, Lc5/o5;->b:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v7, p0, Lc5/o5;->c:Ljava/lang/String;

    .line 28
    .line 29
    iget-boolean v9, p0, Lc5/o5;->d:Z

    .line 30
    .line 31
    invoke-virtual {v0}, Lc5/t2;->b()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lc5/r3;->c()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lc5/t6;->q(Z)Lc5/y7;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    new-instance v1, Lc5/q6;

    .line 42
    .line 43
    move-object v3, v1

    .line 44
    move-object v4, v0

    .line 45
    invoke-direct/range {v3 .. v9}, Lc5/q6;-><init>(Lc5/t6;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Lc5/y7;Z)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lc5/t6;->t(Ljava/lang/Runnable;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :goto_0
    check-cast v3, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    .line 53
    .line 54
    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lc5/i4;

    .line 55
    .line 56
    invoke-virtual {v0}, Lc5/i4;->s()Lc5/t6;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    move-object v9, v2

    .line 61
    check-cast v9, Lcom/google/android/gms/internal/measurement/y0;

    .line 62
    .line 63
    iget-object v5, p0, Lc5/o5;->b:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v6, p0, Lc5/o5;->c:Ljava/lang/String;

    .line 66
    .line 67
    iget-boolean v8, p0, Lc5/o5;->d:Z

    .line 68
    .line 69
    invoke-virtual {v0}, Lc5/t2;->b()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lc5/r3;->c()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lc5/t6;->q(Z)Lc5/y7;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    new-instance v1, Lc5/g6;

    .line 80
    .line 81
    move-object v3, v1

    .line 82
    move-object v4, v0

    .line 83
    invoke-direct/range {v3 .. v9}, Lc5/g6;-><init>(Lc5/t6;Ljava/lang/String;Ljava/lang/String;Lc5/y7;ZLcom/google/android/gms/internal/measurement/y0;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lc5/t6;->t(Ljava/lang/Runnable;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
