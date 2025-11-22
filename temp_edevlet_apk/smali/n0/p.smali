.class public final Ln0/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo0/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "x"

    const-string v1, "y"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo0/c$a;->a([Ljava/lang/String;)Lo0/c$a;

    move-result-object v0

    sput-object v0, Ln0/p;->a:Lo0/c$a;

    return-void
.end method

.method public static a(Lo0/c;)I
    .locals 6
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lo0/c;->a()V

    invoke-virtual {p0}, Lo0/c;->g()D

    move-result-wide v0

    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    invoke-virtual {p0}, Lo0/c;->g()D

    move-result-wide v4

    mul-double v4, v4, v2

    double-to-int v1, v4

    invoke-virtual {p0}, Lo0/c;->g()D

    move-result-wide v4

    mul-double v4, v4, v2

    double-to-int v2, v4

    :goto_0
    invoke-virtual {p0}, Lo0/c;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lo0/c;->p()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo0/c;->c()V

    const/16 p0, 0xff

    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static b(Lo0/c;F)Landroid/graphics/PointF;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lo0/c;->k()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lg/d;->c(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    if-eqz v0, :cond_6

    .line 11
    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x6

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lo0/c;->g()D

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    double-to-float v0, v0

    .line 22
    invoke-virtual {p0}, Lo0/c;->g()D

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    double-to-float v1, v1

    .line 27
    :goto_0
    invoke-virtual {p0}, Lo0/c;->e()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Lo0/c;->p()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance p0, Landroid/graphics/PointF;

    .line 38
    .line 39
    mul-float v0, v0, p1

    .line 40
    .line 41
    mul-float v1, v1, p1

    .line 42
    .line 43
    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 44
    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 48
    .line 49
    invoke-virtual {p0}, Lo0/c;->k()I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    invoke-static {p0}, Landroidx/camera/core/impl/a;->m(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const-string v0, "Unknown point starts with "

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :cond_2
    invoke-virtual {p0}, Lo0/c;->b()V

    .line 68
    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    const/4 v1, 0x0

    .line 72
    :goto_1
    invoke-virtual {p0}, Lo0/c;->e()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_5

    .line 77
    .line 78
    sget-object v2, Ln0/p;->a:Lo0/c$a;

    .line 79
    .line 80
    invoke-virtual {p0, v2}, Lo0/c;->n(Lo0/c$a;)I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_4

    .line 85
    .line 86
    const/4 v3, 0x1

    .line 87
    if-eq v2, v3, :cond_3

    .line 88
    .line 89
    invoke-virtual {p0}, Lo0/c;->o()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lo0/c;->p()V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    invoke-static {p0}, Ln0/p;->d(Lo0/c;)F

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    goto :goto_1

    .line 101
    :cond_4
    invoke-static {p0}, Ln0/p;->d(Lo0/c;)F

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    goto :goto_1

    .line 106
    :cond_5
    invoke-virtual {p0}, Lo0/c;->d()V

    .line 107
    .line 108
    .line 109
    new-instance p0, Landroid/graphics/PointF;

    .line 110
    .line 111
    mul-float v0, v0, p1

    .line 112
    .line 113
    mul-float v1, v1, p1

    .line 114
    .line 115
    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 116
    .line 117
    .line 118
    return-object p0

    .line 119
    :cond_6
    invoke-virtual {p0}, Lo0/c;->a()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lo0/c;->g()D

    .line 123
    .line 124
    .line 125
    move-result-wide v2

    .line 126
    double-to-float v0, v2

    .line 127
    invoke-virtual {p0}, Lo0/c;->g()D

    .line 128
    .line 129
    .line 130
    move-result-wide v2

    .line 131
    double-to-float v2, v2

    .line 132
    :goto_2
    invoke-virtual {p0}, Lo0/c;->k()I

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-eq v3, v1, :cond_7

    .line 137
    .line 138
    invoke-virtual {p0}, Lo0/c;->p()V

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_7
    invoke-virtual {p0}, Lo0/c;->c()V

    .line 143
    .line 144
    .line 145
    new-instance p0, Landroid/graphics/PointF;

    .line 146
    .line 147
    mul-float v0, v0, p1

    .line 148
    .line 149
    mul-float v2, v2, p1

    .line 150
    .line 151
    invoke-direct {p0, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 152
    .line 153
    .line 154
    return-object p0
.end method

.method public static c(Lo0/c;F)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lo0/c;->a()V

    :goto_0
    invoke-virtual {p0}, Lo0/c;->k()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lo0/c;->a()V

    invoke-static {p0, p1}, Ln0/p;->b(Lo0/c;F)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lo0/c;->c()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo0/c;->c()V

    return-object v0
.end method

.method public static d(Lo0/c;)F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lo0/c;->k()I

    move-result v0

    invoke-static {v0}, Lg/d;->c(I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lo0/c;->g()D

    move-result-wide v0

    double-to-float p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Landroidx/camera/core/impl/a;->m(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown value for token of type "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lo0/c;->a()V

    invoke-virtual {p0}, Lo0/c;->g()D

    move-result-wide v0

    double-to-float v0, v0

    :goto_0
    invoke-virtual {p0}, Lo0/c;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lo0/c;->p()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lo0/c;->c()V

    return v0
.end method
