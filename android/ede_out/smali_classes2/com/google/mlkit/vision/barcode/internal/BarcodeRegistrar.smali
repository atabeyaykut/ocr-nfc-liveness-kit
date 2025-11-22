.class public Lcom/google/mlkit/vision/barcode/internal/BarcodeRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getComponents()Ljava/util/List;
    .locals 6
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc6/d<",
            "*>;>;"
        }
    .end annotation

    .line 1
    const-class v0, Lz7/c;

    .line 2
    .line 3
    invoke-static {v0}, Lc6/d;->a(Ljava/lang/Class;)Lc6/d$a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lc6/o;

    .line 8
    .line 9
    const-class v3, Lv7/h;

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    invoke-direct {v2, v4, v5, v3}, Lc6/o;-><init>(IILjava/lang/Class;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lc6/d$a;->a(Lc6/o;)V

    .line 17
    .line 18
    .line 19
    sget-object v2, La0/b;->y:La0/b;

    .line 20
    .line 21
    iput-object v2, v1, Lc6/d$a;->e:Lc6/h;

    .line 22
    .line 23
    invoke-virtual {v1}, Lc6/d$a;->b()Lc6/d;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-class v2, Lz7/b;

    .line 28
    .line 29
    invoke-static {v2}, Lc6/d;->a(Ljava/lang/Class;)Lc6/d$a;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    new-instance v3, Lc6/o;

    .line 34
    .line 35
    invoke-direct {v3, v4, v5, v0}, Lc6/o;-><init>(IILjava/lang/Class;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3}, Lc6/d$a;->a(Lc6/o;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lc6/o;

    .line 42
    .line 43
    const-class v3, Lv7/d;

    .line 44
    .line 45
    invoke-direct {v0, v4, v5, v3}, Lc6/o;-><init>(IILjava/lang/Class;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v0}, Lc6/d$a;->a(Lc6/o;)V

    .line 49
    .line 50
    .line 51
    sget-object v0, La2/b;->m:La2/b;

    .line 52
    .line 53
    iput-object v0, v2, Lc6/d$a;->e:Lc6/h;

    .line 54
    .line 55
    invoke-virtual {v2}, Lc6/d$a;->b()Lc6/d;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sget-object v2, Lp4/u0;->b:Lp4/r0;

    .line 60
    .line 61
    const/4 v2, 0x2

    .line 62
    new-array v3, v2, [Ljava/lang/Object;

    .line 63
    .line 64
    aput-object v1, v3, v5

    .line 65
    .line 66
    aput-object v0, v3, v4

    .line 67
    .line 68
    :goto_0
    if-ge v5, v2, :cond_1

    .line 69
    .line 70
    aget-object v0, v3, v5

    .line 71
    .line 72
    if-eqz v0, :cond_0

    .line 73
    .line 74
    add-int/lit8 v5, v5, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 78
    .line 79
    const/16 v1, 0x14

    .line 80
    .line 81
    const-string v2, "at index "

    .line 82
    .line 83
    invoke-static {v1, v2, v5}, Landroidx/appcompat/widget/v;->c(ILjava/lang/String;I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v0

    .line 91
    :cond_1
    new-instance v0, Lp4/d1;

    .line 92
    .line 93
    invoke-direct {v0, v3, v2}, Lp4/d1;-><init>([Ljava/lang/Object;I)V

    .line 94
    .line 95
    .line 96
    return-object v0
.end method
