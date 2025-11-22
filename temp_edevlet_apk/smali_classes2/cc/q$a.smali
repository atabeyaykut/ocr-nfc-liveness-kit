.class public final Lcc/q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcc/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lcc/s1;Z)Lcc/q;
    .locals 10

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p0, Lcc/q;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p0, Lcc/q;

    .line 11
    .line 12
    goto/16 :goto_6

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcc/e0;->M0()Lcc/c1;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    instance-of v0, v0, Ldc/n;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0}, Lcc/e0;->M0()Lcc/c1;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Lcc/c1;->n()Lma/g;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    instance-of v0, v0, Lma/w0;

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    instance-of v0, p0, Ldc/h;

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    instance-of v0, p0, Lcc/u0;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 48
    :goto_1
    const/4 v3, 0x0

    .line 49
    if-nez v0, :cond_3

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    goto :goto_5

    .line 53
    :cond_3
    instance-of v0, p0, Lcc/u0;

    .line 54
    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_4
    invoke-virtual {p0}, Lcc/e0;->M0()Lcc/c1;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-interface {v0}, Lcc/c1;->n()Lma/g;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    instance-of v4, v0, Lpa/t0;

    .line 67
    .line 68
    if-eqz v4, :cond_5

    .line 69
    .line 70
    check-cast v0, Lpa/t0;

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_5
    move-object v0, v3

    .line 74
    :goto_2
    if-eqz v0, :cond_6

    .line 75
    .line 76
    iget-boolean v0, v0, Lpa/t0;->n:Z

    .line 77
    .line 78
    if-nez v0, :cond_6

    .line 79
    .line 80
    const/4 v0, 0x1

    .line 81
    goto :goto_3

    .line 82
    :cond_6
    const/4 v0, 0x0

    .line 83
    :goto_3
    if-eqz v0, :cond_7

    .line 84
    .line 85
    goto :goto_5

    .line 86
    :cond_7
    if-eqz p1, :cond_8

    .line 87
    .line 88
    invoke-virtual {p0}, Lcc/e0;->M0()Lcc/c1;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-interface {v0}, Lcc/c1;->n()Lma/g;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    instance-of v0, v0, Lma/w0;

    .line 97
    .line 98
    if-eqz v0, :cond_8

    .line 99
    .line 100
    :goto_4
    invoke-static {p0}, Lcc/q1;->g(Lcc/e0;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    goto :goto_5

    .line 105
    :cond_8
    sget-object v6, Ldc/p;->a:Ldc/p;

    .line 106
    .line 107
    const/4 v4, 0x0

    .line 108
    const/4 v5, 0x1

    .line 109
    const/4 v7, 0x0

    .line 110
    const/4 v8, 0x0

    .line 111
    const/16 v9, 0x18

    .line 112
    .line 113
    invoke-static/range {v4 .. v9}, Ldc/a;->a(ZZLdc/p;Ldc/e;Ldc/f;I)Lcc/b1;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {p0}, Lc5/v;->E(Lcc/e0;)Lcc/m0;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    sget-object v5, Lcc/b1$b$b;->a:Lcc/b1$b$b;

    .line 122
    .line 123
    invoke-static {v0, v4, v5}, Lcc/c;->a(Lcc/b1;Lfc/i;Lcc/b1$b;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    xor-int/2addr v1, v0

    .line 128
    :goto_5
    if-eqz v1, :cond_a

    .line 129
    .line 130
    instance-of v0, p0, Lcc/y;

    .line 131
    .line 132
    if-eqz v0, :cond_9

    .line 133
    .line 134
    move-object v0, p0

    .line 135
    check-cast v0, Lcc/y;

    .line 136
    .line 137
    iget-object v1, v0, Lcc/y;->b:Lcc/m0;

    .line 138
    .line 139
    invoke-virtual {v1}, Lcc/e0;->M0()Lcc/c1;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    iget-object v0, v0, Lcc/y;->c:Lcc/m0;

    .line 144
    .line 145
    invoke-virtual {v0}, Lcc/e0;->M0()Lcc/c1;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    :cond_9
    new-instance v0, Lcc/q;

    .line 153
    .line 154
    invoke-static {p0}, Lc5/v;->E(Lcc/e0;)Lcc/m0;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-virtual {p0, v2}, Lcc/m0;->T0(Z)Lcc/m0;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-direct {v0, p0, p1}, Lcc/q;-><init>(Lcc/m0;Z)V

    .line 163
    .line 164
    .line 165
    move-object p0, v0

    .line 166
    goto :goto_6

    .line 167
    :cond_a
    move-object p0, v3

    .line 168
    :goto_6
    return-object p0
.end method
