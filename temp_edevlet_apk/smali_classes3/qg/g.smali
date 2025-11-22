.class public final Lqg/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk9/a;


# instance fields
.field public final synthetic a:I

.field public final b:Lk9/a;

.field public final c:Lk9/a;

.field public final d:Lk9/a;

.field public final e:Lk9/a;

.field public final f:Lk9/a;


# direct methods
.method public synthetic constructor <init>(Lk9/a;Lgf/c;Lzf/d1$a;Lzf/d1$b;Lgf/c;I)V
    .locals 0

    iput p6, p0, Lqg/g;->a:I

    iput-object p1, p0, Lqg/g;->b:Lk9/a;

    iput-object p2, p0, Lqg/g;->c:Lk9/a;

    iput-object p3, p0, Lqg/g;->d:Lk9/a;

    iput-object p4, p0, Lqg/g;->e:Lk9/a;

    iput-object p5, p0, Lqg/g;->f:Lk9/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lqg/g;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lqg/g;->f:Lk9/a;

    .line 4
    .line 5
    iget-object v2, p0, Lqg/g;->e:Lk9/a;

    .line 6
    .line 7
    iget-object v3, p0, Lqg/g;->d:Lk9/a;

    .line 8
    .line 9
    iget-object v4, p0, Lqg/g;->c:Lk9/a;

    .line 10
    .line 11
    iget-object v5, p0, Lqg/g;->b:Lk9/a;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :pswitch_0
    new-instance v0, Lrh/b;

    .line 19
    .line 20
    invoke-direct {v0}, Lrh/b;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {v5}, Lk9/a;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    check-cast v5, Lud/d0;

    .line 28
    .line 29
    iput-object v5, v0, Lrh/b;->a:Lud/d0;

    .line 30
    .line 31
    invoke-interface {v4}, Lk9/a;->get()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Ljava/lang/String;

    .line 36
    .line 37
    iput-object v4, v0, Lrh/b;->b:Ljava/lang/String;

    .line 38
    .line 39
    invoke-interface {v3}, Lk9/a;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Ljava/lang/String;

    .line 44
    .line 45
    iput-object v3, v0, Lrh/b;->c:Ljava/lang/String;

    .line 46
    .line 47
    invoke-interface {v2}, Lk9/a;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Ljava/lang/String;

    .line 52
    .line 53
    iput-object v2, v0, Lrh/b;->d:Ljava/lang/String;

    .line 54
    .line 55
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lgf/b;

    .line 60
    .line 61
    iput-object v1, v0, Lrh/b;->e:Lgf/b;

    .line 62
    .line 63
    return-object v0

    .line 64
    :pswitch_1
    new-instance v0, Lbh/a;

    .line 65
    .line 66
    invoke-direct {v0}, Lbh/a;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-interface {v5}, Lk9/a;->get()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    check-cast v5, Lud/d0;

    .line 74
    .line 75
    iput-object v5, v0, Lbh/a;->a:Lud/d0;

    .line 76
    .line 77
    invoke-interface {v4}, Lk9/a;->get()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Ljava/lang/String;

    .line 82
    .line 83
    iput-object v4, v0, Lbh/a;->b:Ljava/lang/String;

    .line 84
    .line 85
    invoke-interface {v3}, Lk9/a;->get()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Ljava/lang/String;

    .line 90
    .line 91
    iput-object v3, v0, Lbh/a;->c:Ljava/lang/String;

    .line 92
    .line 93
    invoke-interface {v2}, Lk9/a;->get()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Ljava/lang/String;

    .line 98
    .line 99
    iput-object v2, v0, Lbh/a;->d:Ljava/lang/String;

    .line 100
    .line 101
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Lgf/b;

    .line 106
    .line 107
    iput-object v1, v0, Lbh/a;->e:Lgf/b;

    .line 108
    .line 109
    return-object v0

    .line 110
    :pswitch_2
    new-instance v0, Lqg/f;

    .line 111
    .line 112
    invoke-direct {v0}, Lqg/f;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-interface {v5}, Lk9/a;->get()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    check-cast v5, Lud/d0;

    .line 120
    .line 121
    iput-object v5, v0, Lqg/f;->a:Lud/d0;

    .line 122
    .line 123
    invoke-interface {v4}, Lk9/a;->get()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    check-cast v4, Ljava/lang/String;

    .line 128
    .line 129
    iput-object v4, v0, Lqg/f;->b:Ljava/lang/String;

    .line 130
    .line 131
    invoke-interface {v3}, Lk9/a;->get()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    check-cast v3, Ljava/lang/String;

    .line 136
    .line 137
    iput-object v3, v0, Lqg/f;->c:Ljava/lang/String;

    .line 138
    .line 139
    invoke-interface {v2}, Lk9/a;->get()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    check-cast v2, Ljava/lang/String;

    .line 144
    .line 145
    iput-object v2, v0, Lqg/f;->d:Ljava/lang/String;

    .line 146
    .line 147
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    check-cast v1, Lgf/b;

    .line 152
    .line 153
    iput-object v1, v0, Lqg/f;->e:Lgf/b;

    .line 154
    .line 155
    return-object v0

    .line 156
    :goto_0
    new-instance v0, Lth/b;

    .line 157
    .line 158
    invoke-direct {v0}, Lth/b;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-interface {v5}, Lk9/a;->get()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    check-cast v5, Lud/d0;

    .line 166
    .line 167
    iput-object v5, v0, Lth/b;->a:Lud/d0;

    .line 168
    .line 169
    invoke-interface {v4}, Lk9/a;->get()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    check-cast v4, Ljava/lang/String;

    .line 174
    .line 175
    iput-object v4, v0, Lth/b;->b:Ljava/lang/String;

    .line 176
    .line 177
    invoke-interface {v3}, Lk9/a;->get()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    check-cast v3, Ljava/lang/String;

    .line 182
    .line 183
    iput-object v3, v0, Lth/b;->c:Ljava/lang/String;

    .line 184
    .line 185
    invoke-interface {v2}, Lk9/a;->get()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    check-cast v2, Ljava/lang/String;

    .line 190
    .line 191
    iput-object v2, v0, Lth/b;->d:Ljava/lang/String;

    .line 192
    .line 193
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    check-cast v1, Lgf/b;

    .line 198
    .line 199
    iput-object v1, v0, Lth/b;->e:Lgf/b;

    .line 200
    .line 201
    return-object v0

    .line 202
    nop

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
