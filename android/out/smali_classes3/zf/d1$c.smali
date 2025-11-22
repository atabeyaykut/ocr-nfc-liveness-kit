.class public final Lzf/d1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzf/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk9/a<",
        "Lud/d0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Laf/a;


# direct methods
.method public constructor <init>(Laf/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzf/d1$c;->a:Laf/a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lzf/d1$c;->a:Laf/a;

    .line 2
    .line 3
    check-cast v0, Laf/b;

    .line 4
    .line 5
    iget-object v1, v0, Laf/b;->a:Lbf/a;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Laf/b;->c()Lrc/v;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ll8/b0$a;

    .line 15
    .line 16
    invoke-direct {v1}, Ll8/b0$a;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/mkt/data/SpecifiedTypeOrNull$a$a;

    .line 20
    .line 21
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/mkt/data/SpecifiedTypeOrNull$a$a;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ll8/b0$a;->a(Ll8/p$a;)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Lef/a;

    .line 28
    .line 29
    const-class v3, Leg/g;

    .line 30
    .line 31
    invoke-direct {v2, v3}, Lef/a;-><init>(Ljava/lang/Class;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ll8/b0$a;->a(Ll8/p$a;)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Lef/a;

    .line 38
    .line 39
    const-class v3, Ljava/lang/String;

    .line 40
    .line 41
    invoke-direct {v2, v3}, Lef/a;-><init>(Ljava/lang/Class;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ll8/b0$a;->a(Ll8/p$a;)V

    .line 45
    .line 46
    .line 47
    new-instance v2, Lef/a;

    .line 48
    .line 49
    const-class v3, Leg/h;

    .line 50
    .line 51
    invoke-direct {v2, v3}, Lef/a;-><init>(Ljava/lang/Class;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ll8/b0$a;->a(Ll8/p$a;)V

    .line 55
    .line 56
    .line 57
    new-instance v2, Lef/a;

    .line 58
    .line 59
    const-class v3, Leg/i;

    .line 60
    .line 61
    invoke-direct {v2, v3}, Lef/a;-><init>(Ljava/lang/Class;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ll8/b0$a;->a(Ll8/p$a;)V

    .line 65
    .line 66
    .line 67
    new-instance v2, Ll8/b0;

    .line 68
    .line 69
    invoke-direct {v2, v1}, Ll8/b0;-><init>(Ll8/b0$a;)V

    .line 70
    .line 71
    .line 72
    new-instance v1, Lud/d0$b;

    .line 73
    .line 74
    invoke-direct {v1}, Lud/d0$b;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v3, "https://api.turkiye.gov.tr/"

    .line 78
    .line 79
    invoke-virtual {v1, v3}, Lud/d0$b;->c(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iput-object v0, v1, Lud/d0$b;->b:Lrc/d$a;

    .line 83
    .line 84
    new-instance v0, Lvd/g;

    .line 85
    .line 86
    invoke-direct {v0}, Lvd/g;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v0}, Lud/d0$b;->a(Lvd/g;)V

    .line 90
    .line 91
    .line 92
    new-instance v0, Lwd/a;

    .line 93
    .line 94
    invoke-direct {v0, v2}, Lwd/a;-><init>(Ll8/b0;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v0}, Lud/d0$b;->b(Lwd/a;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Lud/d0$b;->d()Lud/d0;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    return-object v0
.end method
