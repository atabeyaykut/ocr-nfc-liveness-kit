.class public final Lmb/h$c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmb/h$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lmb/h$d;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Lmb/h$d;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Z


# direct methods
.method public constructor <init>(Lmb/h$c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lmb/h$c;->a:Lmb/g;

    .line 5
    .line 6
    iget-boolean v0, p1, Lmb/g;->c:Z

    .line 7
    .line 8
    iget-object p1, p1, Lmb/g;->a:Lmb/t;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lmb/k$b;

    .line 13
    .line 14
    invoke-virtual {p1}, Lmb/u;->entrySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lmb/u$d;

    .line 19
    .line 20
    invoke-virtual {p1}, Lmb/u$d;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {v0, p1}, Lmb/k$b;-><init>(Ljava/util/Iterator;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p1}, Lmb/u;->entrySet()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lmb/u$d;

    .line 33
    .line 34
    invoke-virtual {p1}, Lmb/u$d;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :goto_0
    iput-object v0, p0, Lmb/h$c$a;->a:Ljava/util/Iterator;

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Ljava/util/Map$Entry;

    .line 51
    .line 52
    iput-object p1, p0, Lmb/h$c$a;->b:Ljava/util/Map$Entry;

    .line 53
    .line 54
    :cond_1
    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lmb/h$c$a;->c:Z

    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final a(ILmb/e;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lmb/h$c$a;->b:Ljava/util/Map$Entry;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lmb/h$d;

    .line 10
    .line 11
    iget v0, v0, Lmb/h$d;->a:I

    .line 12
    .line 13
    if-ge v0, p1, :cond_7

    .line 14
    .line 15
    iget-object v0, p0, Lmb/h$c$a;->b:Ljava/util/Map$Entry;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lmb/h$d;

    .line 22
    .line 23
    iget-boolean v1, p0, Lmb/h$c$a;->c:Z

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x2

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    iget-object v1, v0, Lmb/h$d;->b:Lmb/w;

    .line 30
    .line 31
    iget-object v1, v1, Lmb/w;->a:Lmb/x;

    .line 32
    .line 33
    sget-object v4, Lmb/x;->k:Lmb/x;

    .line 34
    .line 35
    if-ne v1, v4, :cond_0

    .line 36
    .line 37
    iget-boolean v1, v0, Lmb/h$d;->c:Z

    .line 38
    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    iget-object v1, p0, Lmb/h$c$a;->b:Ljava/util/Map$Entry;

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lmb/p;

    .line 48
    .line 49
    const/4 v4, 0x1

    .line 50
    const/4 v5, 0x3

    .line 51
    invoke-virtual {p2, v4, v5}, Lmb/e;->x(II)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v3, v2}, Lmb/e;->x(II)V

    .line 55
    .line 56
    .line 57
    iget v0, v0, Lmb/h$d;->a:I

    .line 58
    .line 59
    invoke-virtual {p2, v0}, Lmb/e;->v(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v5, v1}, Lmb/e;->o(ILmb/p;)V

    .line 63
    .line 64
    .line 65
    const/4 v0, 0x4

    .line 66
    invoke-virtual {p2, v4, v0}, Lmb/e;->x(II)V

    .line 67
    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_0
    iget-object v1, p0, Lmb/h$c$a;->b:Ljava/util/Map$Entry;

    .line 71
    .line 72
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    sget-object v4, Lmb/g;->d:Lmb/g;

    .line 77
    .line 78
    invoke-virtual {v0}, Lmb/h$d;->h()Lmb/w;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v0}, Lmb/h$d;->f()I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    invoke-virtual {v0}, Lmb/h$d;->g()Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-eqz v6, :cond_3

    .line 91
    .line 92
    check-cast v1, Ljava/util/List;

    .line 93
    .line 94
    invoke-virtual {v0}, Lmb/h$d;->m()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_2

    .line 99
    .line 100
    invoke-virtual {p2, v5, v3}, Lmb/e;->x(II)V

    .line 101
    .line 102
    .line 103
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_1

    .line 112
    .line 113
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-static {v4, v3}, Lmb/g;->d(Lmb/w;Ljava/lang/Object;)I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    add-int/2addr v2, v3

    .line 122
    goto :goto_1

    .line 123
    :cond_1
    invoke-virtual {p2, v2}, Lmb/e;->v(I)V

    .line 124
    .line 125
    .line 126
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_5

    .line 135
    .line 136
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-static {p2, v4, v1}, Lmb/g;->n(Lmb/e;Lmb/w;Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_5

    .line 153
    .line 154
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {p2, v4, v5, v1}, Lmb/g;->m(Lmb/e;Lmb/w;ILjava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_3
    instance-of v0, v1, Lmb/k;

    .line 163
    .line 164
    if-eqz v0, :cond_4

    .line 165
    .line 166
    check-cast v1, Lmb/k;

    .line 167
    .line 168
    invoke-virtual {v1}, Lmb/k;->a()Lmb/p;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-static {p2, v4, v5, v0}, Lmb/g;->m(Lmb/e;Lmb/w;ILjava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_4
    invoke-static {p2, v4, v5, v1}, Lmb/g;->m(Lmb/e;Lmb/w;ILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    :cond_5
    :goto_4
    iget-object v0, p0, Lmb/h$c$a;->a:Ljava/util/Iterator;

    .line 180
    .line 181
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_6

    .line 186
    .line 187
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    check-cast v0, Ljava/util/Map$Entry;

    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_6
    const/4 v0, 0x0

    .line 195
    :goto_5
    iput-object v0, p0, Lmb/h$c$a;->b:Ljava/util/Map$Entry;

    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_7
    return-void
.end method
