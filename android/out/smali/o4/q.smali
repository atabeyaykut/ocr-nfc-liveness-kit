.class public final Lo4/q;
.super Lv7/e;
.source "SourceFile"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lo4/q;->b:I

    invoke-direct {p0}, Lv7/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lo4/q;->b:I

    .line 2
    .line 3
    const-class v1, Lv7/l;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast p1, Lo4/j;

    .line 10
    .line 11
    new-instance v0, Lo4/m;

    .line 12
    .line 13
    invoke-static {}, Lv7/h;->c()Lv7/h;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {}, Lv7/h;->c()Lv7/h;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3}, Lv7/h;->b()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    new-instance v4, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lo4/j;->c()Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_0

    .line 35
    .line 36
    new-instance v5, Lo4/p;

    .line 37
    .line 38
    invoke-direct {v5, v3}, Lo4/p;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p1}, Lo4/j;->b()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v2}, Lv7/h;->b()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v2, v1}, Lv7/h;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lv7/l;

    .line 57
    .line 58
    invoke-direct {v0, v3, v1, p1}, Lo4/m;-><init>(Landroid/content/Context;Lv7/l;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object v0

    .line 62
    :goto_0
    check-cast p1, Ls4/s8;

    .line 63
    .line 64
    new-instance v0, Ls4/x8;

    .line 65
    .line 66
    invoke-static {}, Lv7/h;->c()Lv7/h;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    new-instance v3, Ls4/t8;

    .line 71
    .line 72
    invoke-static {}, Lv7/h;->c()Lv7/h;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v4}, Lv7/h;->b()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-direct {v3, v4, p1}, Ls4/t8;-><init>(Landroid/content/Context;Ls4/s8;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Ls4/s8;->b()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v2}, Lv7/h;->b()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v2, v1}, Lv7/h;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Lv7/l;

    .line 96
    .line 97
    invoke-direct {v0, v4, v1, v3, p1}, Ls4/x8;-><init>(Landroid/content/Context;Lv7/l;Ls4/t8;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-object v0

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
