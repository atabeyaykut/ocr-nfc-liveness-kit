.class public final synthetic Lz7/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp4/t9;


# instance fields
.field public final synthetic a:Lz7/e;

.field public final synthetic b:J

.field public final synthetic c:Lp4/o7;

.field public final synthetic d:Lp4/q0;

.field public final synthetic e:Lp4/q0;

.field public final synthetic f:La8/a;


# direct methods
.method public synthetic constructor <init>(Lz7/e;JLp4/o7;Lp4/q0;Lp4/q0;La8/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz7/d;->a:Lz7/e;

    iput-wide p2, p0, Lz7/d;->b:J

    iput-object p4, p0, Lz7/d;->c:Lp4/o7;

    iput-object p5, p0, Lz7/d;->d:Lp4/q0;

    iput-object p6, p0, Lz7/d;->e:Lp4/q0;

    iput-object p7, p0, Lz7/d;->f:La8/a;

    return-void
.end method


# virtual methods
.method public final a()Lp4/y9;
    .locals 7

    .line 1
    iget-object v0, p0, Lz7/d;->a:Lz7/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lp4/b8;

    .line 7
    .line 8
    invoke-direct {v1}, Lp4/b8;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lp4/g7;

    .line 12
    .line 13
    invoke-direct {v2}, Lp4/g7;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-wide v3, p0, Lz7/d;->b:J

    .line 17
    .line 18
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    const-wide v5, 0x7fffffffffffffffL

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    and-long/2addr v3, v5

    .line 32
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iput-object v3, v2, Lp4/g7;->a:Ljava/lang/Object;

    .line 37
    .line 38
    iget-object v3, p0, Lz7/d;->c:Lp4/o7;

    .line 39
    .line 40
    iput-object v3, v2, Lp4/g7;->b:Ljava/lang/Object;

    .line 41
    .line 42
    sget-boolean v3, Lz7/e;->k:Z

    .line 43
    .line 44
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    iput-object v3, v2, Lp4/g7;->c:Ljava/lang/Object;

    .line 49
    .line 50
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 51
    .line 52
    iput-object v3, v2, Lp4/g7;->d:Ljava/lang/Object;

    .line 53
    .line 54
    iput-object v3, v2, Lp4/g7;->e:Ljava/lang/Object;

    .line 55
    .line 56
    new-instance v3, Lp4/h7;

    .line 57
    .line 58
    invoke-direct {v3, v2}, Lp4/h7;-><init>(Lp4/g7;)V

    .line 59
    .line 60
    .line 61
    iput-object v3, v1, Lp4/b8;->a:Lp4/h7;

    .line 62
    .line 63
    iget-object v2, v0, Lz7/e;->d:Lx7/c;

    .line 64
    .line 65
    invoke-static {v2}, Lz7/a;->a(Lx7/c;)Lp4/k9;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    iput-object v2, v1, Lp4/b8;->b:Lp4/k9;

    .line 70
    .line 71
    iget-object v2, p0, Lz7/d;->d:Lp4/q0;

    .line 72
    .line 73
    invoke-virtual {v2}, Lp4/q0;->d()Lp4/d1;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    iput-object v2, v1, Lp4/b8;->c:Lp4/u0;

    .line 78
    .line 79
    iget-object v2, p0, Lz7/d;->e:Lp4/q0;

    .line 80
    .line 81
    invoke-virtual {v2}, Lp4/q0;->d()Lp4/d1;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    iput-object v2, v1, Lp4/b8;->d:Lp4/u0;

    .line 86
    .line 87
    iget-object v2, p0, Lz7/d;->f:La8/a;

    .line 88
    .line 89
    iget v3, v2, La8/a;->g:I

    .line 90
    .line 91
    sget-object v4, Lz7/e;->j:Lb8/d;

    .line 92
    .line 93
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-static {v2}, Lb8/d;->b(La8/a;)I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    new-instance v4, Lp4/c7;

    .line 101
    .line 102
    invoke-direct {v4}, Lp4/c7;-><init>()V

    .line 103
    .line 104
    .line 105
    const/4 v5, -0x1

    .line 106
    if-eq v3, v5, :cond_4

    .line 107
    .line 108
    const/16 v5, 0x23

    .line 109
    .line 110
    if-eq v3, v5, :cond_3

    .line 111
    .line 112
    const v5, 0x32315659

    .line 113
    .line 114
    .line 115
    if-eq v3, v5, :cond_2

    .line 116
    .line 117
    const/16 v5, 0x10

    .line 118
    .line 119
    if-eq v3, v5, :cond_1

    .line 120
    .line 121
    const/16 v5, 0x11

    .line 122
    .line 123
    if-eq v3, v5, :cond_0

    .line 124
    .line 125
    sget-object v3, Lp4/d7;->b:Lp4/d7;

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_0
    sget-object v3, Lp4/d7;->d:Lp4/d7;

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_1
    sget-object v3, Lp4/d7;->c:Lp4/d7;

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_2
    sget-object v3, Lp4/d7;->e:Lp4/d7;

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_3
    sget-object v3, Lp4/d7;->f:Lp4/d7;

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_4
    sget-object v3, Lp4/d7;->g:Lp4/d7;

    .line 141
    .line 142
    :goto_0
    iput-object v3, v4, Lp4/c7;->a:Ljava/lang/Object;

    .line 143
    .line 144
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    const v3, 0x7fffffff

    .line 153
    .line 154
    .line 155
    and-int/2addr v2, v3

    .line 156
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    iput-object v2, v4, Lp4/c7;->b:Ljava/lang/Object;

    .line 161
    .line 162
    new-instance v2, Lp4/e7;

    .line 163
    .line 164
    invoke-direct {v2, v4}, Lp4/e7;-><init>(Lp4/c7;)V

    .line 165
    .line 166
    .line 167
    iput-object v2, v1, Lp4/b8;->e:Lp4/e7;

    .line 168
    .line 169
    new-instance v2, Lp4/q7;

    .line 170
    .line 171
    invoke-direct {v2}, Lp4/q7;-><init>()V

    .line 172
    .line 173
    .line 174
    iget-boolean v0, v0, Lz7/e;->i:Z

    .line 175
    .line 176
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    iput-object v0, v2, Lp4/q7;->c:Ljava/lang/Boolean;

    .line 181
    .line 182
    new-instance v0, Lp4/c8;

    .line 183
    .line 184
    invoke-direct {v0, v1}, Lp4/c8;-><init>(Lp4/b8;)V

    .line 185
    .line 186
    .line 187
    iput-object v0, v2, Lp4/q7;->d:Lp4/c8;

    .line 188
    .line 189
    new-instance v0, Lp4/y9;

    .line 190
    .line 191
    const/4 v1, 0x0

    .line 192
    invoke-direct {v0, v2, v1}, Lp4/y9;-><init>(Lp4/q7;I)V

    .line 193
    .line 194
    .line 195
    return-object v0
.end method
