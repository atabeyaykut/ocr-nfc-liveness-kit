.class public final Le/c;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Ln/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/f$a;


# direct methods
.method public constructor <init>(Le/f$a;)V
    .locals 0

    iput-object p1, p0, Le/c;->a:Le/f$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    .line 1
    const-class v0, Landroid/app/ActivityManager;

    .line 2
    .line 3
    iget-object v1, p0, Le/c;->a:Le/f$a;

    .line 4
    .line 5
    iget-object v1, v1, Le/f$a;->a:Landroid/content/Context;

    .line 6
    .line 7
    sget-object v2, Lu/c;->a:[Landroid/graphics/Bitmap$Config;

    .line 8
    .line 9
    :try_start_0
    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    check-cast v2, Landroid/app/ActivityManager;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 19
    .line 20
    .line 21
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    const-wide v2, 0x3fc3333333333333L    # 0.15

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    :cond_0
    const-wide v2, 0x3fc999999999999aL    # 0.2

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    :goto_0
    new-instance v4, Ln/f;

    .line 36
    .line 37
    invoke-direct {v4}, Ln/f;-><init>()V

    .line 38
    .line 39
    .line 40
    const-wide/16 v5, 0x0

    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    cmpl-double v8, v2, v5

    .line 44
    .line 45
    if-lez v8, :cond_3

    .line 46
    .line 47
    sget-object v5, Lu/c;->a:[Landroid/graphics/Bitmap$Config;

    .line 48
    .line 49
    :try_start_1
    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    check-cast v0, Landroid/app/ActivityManager;

    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 63
    .line 64
    const/high16 v5, 0x100000

    .line 65
    .line 66
    and-int/2addr v1, v5

    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    const/4 v7, 0x1

    .line 70
    :cond_1
    if-eqz v7, :cond_2

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    .line 78
    .line 79
    .line 80
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    goto :goto_1

    .line 82
    :catch_1
    const/16 v0, 0x100

    .line 83
    .line 84
    :goto_1
    int-to-double v0, v0

    .line 85
    mul-double v2, v2, v0

    .line 86
    .line 87
    const/16 v0, 0x400

    .line 88
    .line 89
    int-to-double v0, v0

    .line 90
    mul-double v2, v2, v0

    .line 91
    .line 92
    mul-double v2, v2, v0

    .line 93
    .line 94
    double-to-int v7, v2

    .line 95
    :cond_3
    if-lez v7, :cond_4

    .line 96
    .line 97
    new-instance v0, Ln/e;

    .line 98
    .line 99
    invoke-direct {v0, v7, v4}, Ln/e;-><init>(ILn/h;)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_4
    new-instance v0, Ln/a;

    .line 104
    .line 105
    invoke-direct {v0, v4}, Ln/a;-><init>(Ln/h;)V

    .line 106
    .line 107
    .line 108
    :goto_2
    new-instance v1, Ln/d;

    .line 109
    .line 110
    invoke-direct {v1, v0, v4}, Ln/d;-><init>(Ln/g;Ln/h;)V

    .line 111
    .line 112
    .line 113
    return-object v1
.end method
