.class public final Lc5/r6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc5/o7;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lc5/r6;->a:I

    .line 2
    iput-object p1, p0, Lc5/r6;->b:Ljava/lang/Object;

    iput-object p2, p0, Lc5/r6;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lc5/s6;Lc5/v2;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lc5/r6;->a:I

    .line 1
    iput-object p1, p0, Lc5/r6;->c:Ljava/lang/Object;

    iput-object p2, p0, Lc5/r6;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lc5/r6;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lc5/r6;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lc5/s6;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lc5/r6;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lc5/s6;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    iput-boolean v2, v1, Lc5/s6;->a:Z

    .line 18
    .line 19
    iget-object v1, p0, Lc5/r6;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Lc5/s6;

    .line 22
    .line 23
    iget-object v1, v1, Lc5/s6;->c:Lc5/t6;

    .line 24
    .line 25
    invoke-virtual {v1}, Lc5/t6;->n()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Lc5/r6;->c:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Lc5/s6;

    .line 34
    .line 35
    iget-object v1, v1, Lc5/s6;->c:Lc5/t6;

    .line 36
    .line 37
    iget-object v1, v1, Lc5/x4;->a:Lc5/z4;

    .line 38
    .line 39
    check-cast v1, Lc5/i4;

    .line 40
    .line 41
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 42
    .line 43
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v1, Lc5/e3;->p:Lc5/c3;

    .line 47
    .line 48
    const-string v2, "Connected to service"

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lc5/c3;->a(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lc5/r6;->c:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v1, Lc5/s6;

    .line 56
    .line 57
    iget-object v1, v1, Lc5/s6;->c:Lc5/t6;

    .line 58
    .line 59
    iget-object v2, p0, Lc5/r6;->b:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v2, Lc5/v2;

    .line 62
    .line 63
    invoke-virtual {v1}, Lc5/t2;->b()V

    .line 64
    .line 65
    .line 66
    invoke-static {v2}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iput-object v2, v1, Lc5/t6;->d:Lc5/v2;

    .line 70
    .line 71
    invoke-virtual {v1}, Lc5/t6;->s()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Lc5/t6;->r()V

    .line 75
    .line 76
    .line 77
    :cond_0
    monitor-exit v0

    .line 78
    return-void

    .line 79
    :catchall_0
    move-exception v1

    .line 80
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw v1

    .line 82
    :goto_0
    iget-object v0, p0, Lc5/r6;->b:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v0, Lc5/o7;

    .line 85
    .line 86
    invoke-virtual {v0}, Lc5/o7;->a()V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lc5/r6;->c:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v1, Ljava/lang/Runnable;

    .line 92
    .line 93
    invoke-virtual {v0}, Lc5/o7;->l()Lc5/h4;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v2}, Lc5/h4;->b()V

    .line 98
    .line 99
    .line 100
    iget-object v2, v0, Lc5/o7;->r:Ljava/util/ArrayList;

    .line 101
    .line 102
    if-nez v2, :cond_1

    .line 103
    .line 104
    new-instance v2, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object v2, v0, Lc5/o7;->r:Ljava/util/ArrayList;

    .line 110
    .line 111
    :cond_1
    iget-object v2, v0, Lc5/o7;->r:Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Lc5/o7;->t()V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    nop

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
