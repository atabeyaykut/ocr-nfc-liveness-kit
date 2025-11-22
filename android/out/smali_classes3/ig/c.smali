.class public final Lig/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcf/a;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lig/c;->a:I

    iput-object p2, p0, Lig/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lr0/p;)Laf/c;
    .locals 10

    .line 1
    iget v0, p0, Lig/c;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lig/c;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto/16 :goto_0

    .line 9
    .line 10
    :pswitch_0
    move-object v3, p1

    .line 11
    check-cast v3, Lrh/c;

    .line 12
    .line 13
    check-cast v1, Lrh/o;

    .line 14
    .line 15
    iget-object p1, v1, Lrh/o;->a:Lk9/a;

    .line 16
    .line 17
    invoke-interface {p1}, Lk9/a;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    move-object v4, p1

    .line 22
    check-cast v4, Lrh/q;

    .line 23
    .line 24
    iget-object p1, v1, Lrh/o;->b:Lk9/a;

    .line 25
    .line 26
    invoke-interface {p1}, Lk9/a;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    move-object v5, p1

    .line 31
    check-cast v5, Lrh/p;

    .line 32
    .line 33
    iget-object p1, v1, Lrh/o;->c:Lk9/a;

    .line 34
    .line 35
    invoke-interface {p1}, Lk9/a;->get()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    move-object v6, p1

    .line 40
    check-cast v6, Lrh/a;

    .line 41
    .line 42
    iget-object p1, v1, Lrh/o;->d:Lk9/a;

    .line 43
    .line 44
    invoke-interface {p1}, Lk9/a;->get()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    move-object v7, p1

    .line 49
    check-cast v7, Lrh/s;

    .line 50
    .line 51
    iget-object p1, v1, Lrh/o;->e:Lk9/a;

    .line 52
    .line 53
    invoke-interface {p1}, Lk9/a;->get()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    move-object v8, p1

    .line 58
    check-cast v8, Lrh/r;

    .line 59
    .line 60
    iget-object p1, v1, Lrh/o;->f:Lk9/a;

    .line 61
    .line 62
    invoke-interface {p1}, Lk9/a;->get()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    move-object v9, p1

    .line 67
    check-cast v9, Lzg/j;

    .line 68
    .line 69
    new-instance p1, Lrh/d;

    .line 70
    .line 71
    move-object v2, p1

    .line 72
    invoke-direct/range {v2 .. v9}, Lrh/d;-><init>(Lrh/c;Lrh/q;Lrh/p;Lrh/a;Lrh/s;Lrh/r;Lzg/j;)V

    .line 73
    .line 74
    .line 75
    return-object p1

    .line 76
    :pswitch_1
    check-cast p1, Lbh/b;

    .line 77
    .line 78
    check-cast v1, Lbh/h;

    .line 79
    .line 80
    iget-object v0, v1, Lbh/h;->a:Lk9/a;

    .line 81
    .line 82
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Lbh/i;

    .line 87
    .line 88
    iget-object v1, v1, Lbh/h;->b:Lk9/a;

    .line 89
    .line 90
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Lbh/j;

    .line 95
    .line 96
    new-instance v2, Lbh/c;

    .line 97
    .line 98
    invoke-direct {v2, p1, v0, v1}, Lbh/c;-><init>(Lbh/b;Lbh/i;Lbh/j;)V

    .line 99
    .line 100
    .line 101
    return-object v2

    .line 102
    :pswitch_2
    check-cast p1, Lqg/h;

    .line 103
    .line 104
    check-cast v1, Lig/b;

    .line 105
    .line 106
    iget-object v0, v1, Lig/b;->a:Lk9/a;

    .line 107
    .line 108
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Lqg/l;

    .line 113
    .line 114
    new-instance v1, Lqg/i;

    .line 115
    .line 116
    invoke-direct {v1, p1, v0}, Lqg/i;-><init>(Lqg/h;Lqg/l;)V

    .line 117
    .line 118
    .line 119
    return-object v1

    .line 120
    :pswitch_3
    check-cast p1, Lfg/e;

    .line 121
    .line 122
    check-cast v1, Lig/b;

    .line 123
    .line 124
    iget-object v0, v1, Lig/b;->a:Lk9/a;

    .line 125
    .line 126
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Lfg/l;

    .line 131
    .line 132
    new-instance v1, Lig/a;

    .line 133
    .line 134
    invoke-direct {v1, p1, v0}, Lig/a;-><init>(Lfg/e;Lfg/l;)V

    .line 135
    .line 136
    .line 137
    return-object v1

    .line 138
    :goto_0
    check-cast p1, Lth/c;

    .line 139
    .line 140
    check-cast v1, Lbh/h;

    .line 141
    .line 142
    iget-object v0, v1, Lbh/h;->a:Lk9/a;

    .line 143
    .line 144
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Lth/g;

    .line 149
    .line 150
    iget-object v1, v1, Lbh/h;->b:Lk9/a;

    .line 151
    .line 152
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    check-cast v1, Lth/a;

    .line 157
    .line 158
    new-instance v2, Lth/d;

    .line 159
    .line 160
    invoke-direct {v2, p1, v0, v1}, Lth/d;-><init>(Lth/c;Lth/g;Lth/a;)V

    .line 161
    .line 162
    .line 163
    return-object v2

    .line 164
    nop

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
