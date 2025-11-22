.class public abstract Leb/a;
.super Leb/d;
.source "SourceFile"

# interfaces
.implements Lyb/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leb/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Leb/d<",
        "TA;",
        "Leb/a$a<",
        "+TA;+TC;>;>;",
        "Lyb/d<",
        "TA;TC;>;"
    }
.end annotation


# instance fields
.field public final b:Lbc/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/g<",
            "Leb/s;",
            "Leb/a$a<",
            "TA;TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbc/c;Lra/f;)V
    .locals 0

    invoke-direct {p0, p2}, Leb/d;-><init>(Lra/f;)V

    new-instance p2, Leb/c;

    invoke-direct {p2, p0}, Leb/c;-><init>(Leb/a;)V

    invoke-virtual {p1, p2}, Lbc/c;->g(Lx9/l;)Lbc/c$k;

    move-result-object p1

    iput-object p1, p0, Leb/a;->b:Lbc/g;

    return-void
.end method


# virtual methods
.method public final d(Lyb/g0;Lgb/m;Lcc/e0;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb/g0;",
            "Lgb/m;",
            "Lcc/e0;",
            ")TC;"
        }
    .end annotation

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lyb/c;->c:Lyb/c;

    sget-object v6, Leb/a$b;->a:Leb/a$b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Leb/a;->t(Lyb/g0;Lgb/m;Lyb/c;Lcc/e0;Lx9/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lyb/g0;Lgb/m;Lcc/e0;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb/g0;",
            "Lgb/m;",
            "Lcc/e0;",
            ")TC;"
        }
    .end annotation

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lyb/c;->b:Lyb/c;

    sget-object v6, Leb/a$c;->a:Leb/a$c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Leb/a;->t(Lyb/g0;Lgb/m;Lyb/c;Lcc/e0;Lx9/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final t(Lyb/g0;Lgb/m;Lyb/c;Lcc/e0;Lx9/p;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb/g0;",
            "Lgb/m;",
            "Lyb/c;",
            "Lcc/e0;",
            "Lx9/p<",
            "-",
            "Leb/a$a<",
            "+TA;+TC;>;-",
            "Leb/v;",
            "+TC;>;)TC;"
        }
    .end annotation

    .line 1
    const/4 v2, 0x1

    .line 2
    const/4 v3, 0x1

    .line 3
    sget-object v0, Lib/b;->A:Lib/b$a;

    .line 4
    .line 5
    iget v1, p2, Lgb/m;->d:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lib/b$a;->c(I)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    invoke-static {p2}, Lkb/h;->d(Lgb/m;)Z

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    move-object v0, p0

    .line 16
    move-object v1, p1

    .line 17
    invoke-virtual/range {v0 .. v5}, Leb/d;->o(Lyb/g0;ZZLjava/lang/Boolean;Z)Leb/s;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    instance-of v0, p1, Lyb/g0$a;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    move-object v0, p1

    .line 29
    check-cast v0, Lyb/g0$a;

    .line 30
    .line 31
    iget-object v0, v0, Lyb/g0;->c:Lma/r0;

    .line 32
    .line 33
    instance-of v2, v0, Leb/u;

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    check-cast v0, Leb/u;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-object v0, v1

    .line 41
    :goto_0
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget-object v0, v0, Leb/u;->b:Leb/s;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move-object v0, v1

    .line 47
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 48
    .line 49
    return-object v1

    .line 50
    :cond_3
    invoke-interface {v0}, Leb/s;->a()Lfb/a;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget-object v2, v2, Lfb/a;->b:Lkb/e;

    .line 55
    .line 56
    sget-object v3, Leb/k;->e:Lkb/e;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    const-string v4, "version"

    .line 62
    .line 63
    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget v4, v3, Lib/a;->b:I

    .line 67
    .line 68
    iget v5, v3, Lib/a;->c:I

    .line 69
    .line 70
    iget v3, v3, Lib/a;->d:I

    .line 71
    .line 72
    invoke-virtual {v2, v4, v5, v3}, Lib/a;->a(III)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    iget-object v3, p1, Lyb/g0;->a:Lib/c;

    .line 77
    .line 78
    iget-object p1, p1, Lyb/g0;->b:Lib/g;

    .line 79
    .line 80
    invoke-static {p2, v3, p1, p3, v2}, Leb/d;->n(Lmb/p;Lib/c;Lib/g;Lyb/c;Z)Leb/v;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-nez p1, :cond_4

    .line 85
    .line 86
    return-object v1

    .line 87
    :cond_4
    iget-object p2, p0, Leb/a;->b:Lbc/g;

    .line 88
    .line 89
    check-cast p2, Lbc/c$k;

    .line 90
    .line 91
    invoke-virtual {p2, v0}, Lbc/c$k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-interface {p5, p2, p1}, Lx9/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-nez p1, :cond_5

    .line 100
    .line 101
    return-object v1

    .line 102
    :cond_5
    invoke-static {p4}, Lja/s;->a(Lcc/e0;)Z

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    if-eqz p2, :cond_9

    .line 107
    .line 108
    check-cast p1, Lqb/g;

    .line 109
    .line 110
    instance-of p2, p1, Lqb/d;

    .line 111
    .line 112
    if-eqz p2, :cond_6

    .line 113
    .line 114
    new-instance p2, Lqb/x;

    .line 115
    .line 116
    check-cast p1, Lqb/d;

    .line 117
    .line 118
    iget-object p1, p1, Lqb/g;->a:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p1, Ljava/lang/Number;

    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    invoke-direct {p2, p1}, Lqb/x;-><init>(B)V

    .line 127
    .line 128
    .line 129
    :goto_2
    move-object p1, p2

    .line 130
    goto :goto_3

    .line 131
    :cond_6
    instance-of p2, p1, Lqb/v;

    .line 132
    .line 133
    if-eqz p2, :cond_7

    .line 134
    .line 135
    new-instance p2, Lqb/a0;

    .line 136
    .line 137
    check-cast p1, Lqb/v;

    .line 138
    .line 139
    iget-object p1, p1, Lqb/g;->a:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast p1, Ljava/lang/Number;

    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    invoke-direct {p2, p1}, Lqb/a0;-><init>(S)V

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_7
    instance-of p2, p1, Lqb/n;

    .line 152
    .line 153
    if-eqz p2, :cond_8

    .line 154
    .line 155
    new-instance p2, Lqb/y;

    .line 156
    .line 157
    check-cast p1, Lqb/n;

    .line 158
    .line 159
    iget-object p1, p1, Lqb/g;->a:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast p1, Ljava/lang/Number;

    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    invoke-direct {p2, p1}, Lqb/y;-><init>(I)V

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_8
    instance-of p2, p1, Lqb/t;

    .line 172
    .line 173
    if-eqz p2, :cond_9

    .line 174
    .line 175
    new-instance p2, Lqb/z;

    .line 176
    .line 177
    check-cast p1, Lqb/t;

    .line 178
    .line 179
    iget-object p1, p1, Lqb/g;->a:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast p1, Ljava/lang/Number;

    .line 182
    .line 183
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 184
    .line 185
    .line 186
    move-result-wide p3

    .line 187
    invoke-direct {p2, p3, p4}, Lqb/z;-><init>(J)V

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_9
    :goto_3
    return-object p1
.end method
