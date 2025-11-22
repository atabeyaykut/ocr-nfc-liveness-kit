.class public final Lfd/i;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/p<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Led/g;

.field public final synthetic b:Lkotlin/jvm/internal/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/v<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Lkotlin/jvm/internal/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/v<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic d:Lkotlin/jvm/internal/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/v<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Led/d0;Lkotlin/jvm/internal/v;Lkotlin/jvm/internal/v;Lkotlin/jvm/internal/v;)V
    .locals 0

    iput-object p1, p0, Lfd/i;->a:Led/g;

    iput-object p2, p0, Lfd/i;->b:Lkotlin/jvm/internal/v;

    iput-object p3, p0, Lfd/i;->c:Lkotlin/jvm/internal/v;

    iput-object p4, p0, Lfd/i;->d:Lkotlin/jvm/internal/v;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    check-cast p1, Ljava/lang/Number;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    check-cast p2, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const/16 p2, 0x5455

    .line 14
    .line 15
    if-ne p1, p2, :cond_a

    .line 16
    .line 17
    const-string p1, "bad zip: extended timestamp extra too short"

    .line 18
    .line 19
    const-wide/16 v2, 0x1

    .line 20
    .line 21
    cmp-long p2, v0, v2

    .line 22
    .line 23
    if-ltz p2, :cond_9

    .line 24
    .line 25
    iget-object p2, p0, Lfd/i;->a:Led/g;

    .line 26
    .line 27
    invoke-interface {p2}, Led/g;->readByte()B

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    and-int/lit16 v4, v4, 0xff

    .line 32
    .line 33
    and-int/lit8 v5, v4, 0x1

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v7, 0x1

    .line 37
    if-ne v5, v7, :cond_0

    .line 38
    .line 39
    const/4 v5, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v5, 0x0

    .line 42
    :goto_0
    and-int/lit8 v8, v4, 0x2

    .line 43
    .line 44
    const/4 v9, 0x2

    .line 45
    if-ne v8, v9, :cond_1

    .line 46
    .line 47
    const/4 v8, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/4 v8, 0x0

    .line 50
    :goto_1
    const/4 v9, 0x4

    .line 51
    and-int/2addr v4, v9

    .line 52
    if-ne v4, v9, :cond_2

    .line 53
    .line 54
    const/4 v6, 0x1

    .line 55
    :cond_2
    if-eqz v5, :cond_3

    .line 56
    .line 57
    const-wide/16 v2, 0x5

    .line 58
    .line 59
    :cond_3
    const-wide/16 v9, 0x4

    .line 60
    .line 61
    if-eqz v8, :cond_4

    .line 62
    .line 63
    add-long/2addr v2, v9

    .line 64
    :cond_4
    if-eqz v6, :cond_5

    .line 65
    .line 66
    add-long/2addr v2, v9

    .line 67
    :cond_5
    cmp-long v4, v0, v2

    .line 68
    .line 69
    if-ltz v4, :cond_8

    .line 70
    .line 71
    const-wide/16 v0, 0x3e8

    .line 72
    .line 73
    if-eqz v5, :cond_6

    .line 74
    .line 75
    invoke-interface {p2}, Led/g;->b0()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    int-to-long v2, p1

    .line 80
    mul-long v2, v2, v0

    .line 81
    .line 82
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iget-object v2, p0, Lfd/i;->b:Lkotlin/jvm/internal/v;

    .line 87
    .line 88
    iput-object p1, v2, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    .line 89
    .line 90
    :cond_6
    if-eqz v8, :cond_7

    .line 91
    .line 92
    invoke-interface {p2}, Led/g;->b0()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    int-to-long v2, p1

    .line 97
    mul-long v2, v2, v0

    .line 98
    .line 99
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iget-object v2, p0, Lfd/i;->c:Lkotlin/jvm/internal/v;

    .line 104
    .line 105
    iput-object p1, v2, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    .line 106
    .line 107
    :cond_7
    if-eqz v6, :cond_a

    .line 108
    .line 109
    invoke-interface {p2}, Led/g;->b0()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    int-to-long p1, p1

    .line 114
    mul-long p1, p1, v0

    .line 115
    .line 116
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget-object p2, p0, Lfd/i;->d:Lkotlin/jvm/internal/v;

    .line 121
    .line 122
    iput-object p1, p2, Lkotlin/jvm/internal/v;->a:Ljava/lang/Object;

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_8
    new-instance p2, Ljava/io/IOException;

    .line 126
    .line 127
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p2

    .line 131
    :cond_9
    new-instance p2, Ljava/io/IOException;

    .line 132
    .line 133
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p2

    .line 137
    :cond_a
    :goto_2
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 138
    .line 139
    return-object p1
.end method
