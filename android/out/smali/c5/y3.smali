.class public final synthetic Lc5/y3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lc5/y3;->a:I

    iput-object p2, p0, Lc5/y3;->b:Ljava/lang/Object;

    iput-object p3, p0, Lc5/y3;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lc5/y3;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lc5/y3;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lc5/y3;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    check-cast v2, Lc5/c4;

    .line 12
    .line 13
    check-cast v1, Ljava/lang/String;

    .line 14
    .line 15
    new-instance v0, Lcom/google/android/gms/internal/measurement/k9;

    .line 16
    .line 17
    new-instance v3, Lp4/c7;

    .line 18
    .line 19
    invoke-direct {v3, v2, v1}, Lp4/c7;-><init>(Lc5/c4;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/measurement/k9;-><init>(Lp4/c7;)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :goto_0
    check-cast v2, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;

    .line 27
    .line 28
    check-cast v1, La8/a;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    sget-object v0, Lr4/g6;->h:Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-static {}, Lr4/t6;->a()V

    .line 36
    .line 37
    .line 38
    sget v0, Lr4/s6;->a:I

    .line 39
    .line 40
    invoke-static {}, Lr4/t6;->a()V

    .line 41
    .line 42
    .line 43
    const-string v0, ""

    .line 44
    .line 45
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_0

    .line 50
    .line 51
    sget-object v0, Lr4/f6;->j:Lr4/f6;

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    sget-object v0, Lr4/g6;->h:Ljava/util/HashMap;

    .line 55
    .line 56
    const-string v3, "detectorTaskWithResource#run"

    .line 57
    .line 58
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    if-nez v4, :cond_1

    .line 63
    .line 64
    new-instance v4, Lr4/g6;

    .line 65
    .line 66
    invoke-direct {v4, v3}, Lr4/g6;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lr4/g6;

    .line 77
    .line 78
    :goto_1
    invoke-virtual {v0}, Lr4/g6;->a()V

    .line 79
    .line 80
    .line 81
    :try_start_0
    iget-object v2, v2, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->b:Lv7/f;

    .line 82
    .line 83
    invoke-virtual {v2, v1}, Lv7/f;->d(La8/a;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-virtual {v0}, Lr4/g6;->close()V

    .line 88
    .line 89
    .line 90
    return-object v1

    .line 91
    :catchall_0
    move-exception v1

    .line 92
    :try_start_1
    invoke-virtual {v0}, Lr4/g6;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :catchall_1
    move-exception v0

    .line 97
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    :goto_2
    throw v1

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
