.class public final Lpe/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lle/a;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lpe/i;->a:I

    iput-object p2, p0, Lpe/i;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroidx/work/WorkerParameters;Lud/d0;Lud/d0;Lud/d0;Lud/d0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/work/CoroutineWorker;
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    iget v1, v0, Lpe/i;->a:I

    .line 3
    .line 4
    iget-object v2, v0, Lpe/i;->b:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_0
    check-cast v2, Lue/a;

    .line 11
    .line 12
    iget-object v1, v2, Lue/a;->a:Lk9/a;

    .line 13
    .line 14
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    move-object v12, v1

    .line 19
    check-cast v12, Landroid/content/SharedPreferences$Editor;

    .line 20
    .line 21
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/notification/RegisterWorker;

    .line 22
    .line 23
    move-object v2, v1

    .line 24
    move-object v3, p1

    .line 25
    move-object v4, p2

    .line 26
    move-object/from16 v5, p3

    .line 27
    .line 28
    move-object/from16 v6, p4

    .line 29
    .line 30
    move-object/from16 v7, p5

    .line 31
    .line 32
    move-object/from16 v8, p6

    .line 33
    .line 34
    move-object/from16 v9, p7

    .line 35
    .line 36
    move-object/from16 v10, p8

    .line 37
    .line 38
    move-object/from16 v11, p9

    .line 39
    .line 40
    invoke-direct/range {v2 .. v12}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/notification/RegisterWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Lud/d0;Lud/d0;Lud/d0;Lud/d0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 41
    .line 42
    .line 43
    return-object v1

    .line 44
    :pswitch_1
    check-cast v2, Lpe/h;

    .line 45
    .line 46
    iget-object v1, v2, Lpe/h;->a:Lk9/a;

    .line 47
    .line 48
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    move-object v12, v1

    .line 53
    check-cast v12, Landroid/content/SharedPreferences$Editor;

    .line 54
    .line 55
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker;

    .line 56
    .line 57
    move-object v2, v1

    .line 58
    move-object v3, p1

    .line 59
    move-object v4, p2

    .line 60
    move-object/from16 v5, p3

    .line 61
    .line 62
    move-object/from16 v6, p4

    .line 63
    .line 64
    move-object/from16 v7, p5

    .line 65
    .line 66
    move-object/from16 v8, p6

    .line 67
    .line 68
    move-object/from16 v9, p7

    .line 69
    .line 70
    move-object/from16 v10, p8

    .line 71
    .line 72
    move-object/from16 v11, p9

    .line 73
    .line 74
    invoke-direct/range {v2 .. v12}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/favorite/UnfavoriteOperationWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Lud/d0;Lud/d0;Lud/d0;Lud/d0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 75
    .line 76
    .line 77
    return-object v1

    .line 78
    :goto_0
    check-cast v2, Lye/b;

    .line 79
    .line 80
    iget-object v1, v2, Lye/b;->a:Lk9/a;

    .line 81
    .line 82
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    move-object v12, v1

    .line 87
    check-cast v12, Landroid/content/SharedPreferences$Editor;

    .line 88
    .line 89
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateLogWorker;

    .line 90
    .line 91
    move-object v2, v1

    .line 92
    move-object v3, p1

    .line 93
    move-object v4, p2

    .line 94
    move-object/from16 v5, p3

    .line 95
    .line 96
    move-object/from16 v6, p4

    .line 97
    .line 98
    move-object/from16 v7, p5

    .line 99
    .line 100
    move-object/from16 v8, p6

    .line 101
    .line 102
    move-object/from16 v9, p7

    .line 103
    .line 104
    move-object/from16 v10, p8

    .line 105
    .line 106
    move-object/from16 v11, p9

    .line 107
    .line 108
    invoke-direct/range {v2 .. v12}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/update/UpdateLogWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Lud/d0;Lud/d0;Lud/d0;Lud/d0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    .line 109
    .line 110
    .line 111
    return-object v1

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
