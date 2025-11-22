.class public final Lu2/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr2/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lr2/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lu2/s;

.field public final b:Ljava/lang/String;

.field public final c:Lr2/b;

.field public final d:Lr2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr2/e<",
            "TT;[B>;"
        }
    .end annotation
.end field

.field public final e:Lu2/v;


# direct methods
.method public constructor <init>(Lu2/s;Ljava/lang/String;Lr2/b;Lr2/e;Lu2/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu2/s;",
            "Ljava/lang/String;",
            "Lr2/b;",
            "Lr2/e<",
            "TT;[B>;",
            "Lu2/v;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu2/u;->a:Lu2/s;

    iput-object p2, p0, Lu2/u;->b:Ljava/lang/String;

    iput-object p3, p0, Lu2/u;->c:Lr2/b;

    iput-object p4, p0, Lu2/u;->d:Lr2/e;

    iput-object p5, p0, Lu2/u;->e:Lu2/v;

    return-void
.end method


# virtual methods
.method public final a(Lr2/a;)V
    .locals 1

    new-instance v0, Landroidx/appcompat/graphics/drawable/a;

    invoke-direct {v0}, Landroidx/appcompat/graphics/drawable/a;-><init>()V

    invoke-virtual {p0, p1, v0}, Lu2/u;->b(Lr2/a;Lr2/h;)V

    return-void
.end method

.method public final b(Lr2/a;Lr2/h;)V
    .locals 7

    .line 1
    iget-object v1, p0, Lu2/u;->a:Lu2/s;

    .line 2
    .line 3
    if-eqz v1, :cond_3

    .line 4
    .line 5
    iget-object v2, p0, Lu2/u;->b:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v2, :cond_2

    .line 8
    .line 9
    iget-object v4, p0, Lu2/u;->d:Lr2/e;

    .line 10
    .line 11
    if-eqz v4, :cond_1

    .line 12
    .line 13
    iget-object v5, p0, Lu2/u;->c:Lr2/b;

    .line 14
    .line 15
    if-eqz v5, :cond_0

    .line 16
    .line 17
    new-instance v6, Lu2/i;

    .line 18
    .line 19
    move-object v0, v6

    .line 20
    move-object v3, p1

    .line 21
    invoke-direct/range {v0 .. v5}, Lu2/i;-><init>(Lu2/s;Ljava/lang/String;Lr2/c;Lr2/e;Lr2/b;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lu2/u;->e:Lu2/v;

    .line 25
    .line 26
    check-cast p1, Lu2/w;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    iget-object v0, v6, Lu2/i;->c:Lr2/c;

    .line 32
    .line 33
    invoke-virtual {v0}, Lr2/c;->c()Lr2/d;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v2, v6, Lu2/i;->a:Lu2/s;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lu2/s;->a()Lu2/j$a;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2}, Lu2/s;->b()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v3, v4}, Lu2/j$a;->b(Ljava/lang/String;)Lu2/j$a;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v1}, Lu2/j$a;->c(Lr2/d;)Lu2/j$a;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Lu2/s;->c()[B

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iput-object v1, v3, Lu2/j$a;->b:[B

    .line 61
    .line 62
    invoke-virtual {v3}, Lu2/j$a;->a()Lu2/j;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    new-instance v2, Lu2/h$a;

    .line 67
    .line 68
    invoke-direct {v2}, Lu2/h$a;-><init>()V

    .line 69
    .line 70
    .line 71
    new-instance v3, Ljava/util/HashMap;

    .line 72
    .line 73
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v3, v2, Lu2/h$a;->f:Ljava/util/Map;

    .line 77
    .line 78
    iget-object v3, p1, Lu2/w;->a:Ld3/a;

    .line 79
    .line 80
    invoke-interface {v3}, Ld3/a;->a()J

    .line 81
    .line 82
    .line 83
    move-result-wide v3

    .line 84
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    iput-object v3, v2, Lu2/h$a;->d:Ljava/lang/Long;

    .line 89
    .line 90
    iget-object v3, p1, Lu2/w;->b:Ld3/a;

    .line 91
    .line 92
    invoke-interface {v3}, Ld3/a;->a()J

    .line 93
    .line 94
    .line 95
    move-result-wide v3

    .line 96
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    iput-object v3, v2, Lu2/h$a;->e:Ljava/lang/Long;

    .line 101
    .line 102
    iget-object v3, v6, Lu2/i;->b:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v2, v3}, Lu2/h$a;->d(Ljava/lang/String;)Lu2/h$a;

    .line 105
    .line 106
    .line 107
    new-instance v3, Lu2/m;

    .line 108
    .line 109
    invoke-virtual {v0}, Lr2/c;->b()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    iget-object v5, v6, Lu2/i;->d:Lr2/e;

    .line 114
    .line 115
    invoke-interface {v5, v4}, Lr2/e;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    check-cast v4, [B

    .line 120
    .line 121
    iget-object v5, v6, Lu2/i;->e:Lr2/b;

    .line 122
    .line 123
    invoke-direct {v3, v5, v4}, Lu2/m;-><init>(Lr2/b;[B)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v3}, Lu2/h$a;->c(Lu2/m;)Lu2/h$a;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0}, Lr2/c;->a()Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iput-object v0, v2, Lu2/h$a;->b:Ljava/lang/Integer;

    .line 134
    .line 135
    invoke-virtual {v2}, Lu2/h$a;->b()Lu2/h;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    iget-object p1, p1, Lu2/w;->c:Lz2/e;

    .line 140
    .line 141
    invoke-interface {p1, p2, v0, v1}, Lz2/e;->a(Lr2/h;Lu2/h;Lu2/j;)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 146
    .line 147
    const-string p2, "Null encoding"

    .line 148
    .line 149
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw p1

    .line 153
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 154
    .line 155
    const-string p2, "Null transformer"

    .line 156
    .line 157
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw p1

    .line 161
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 162
    .line 163
    const-string p2, "Null transportName"

    .line 164
    .line 165
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw p1

    .line 169
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 170
    .line 171
    const-string p2, "Null transportContext"

    .line 172
    .line 173
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p1
.end method
