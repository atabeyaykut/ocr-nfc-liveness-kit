.class public final Lpf/l;
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

    iput p1, p0, Lpf/l;->a:I

    iput-object p2, p0, Lpf/l;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lr0/p;)Laf/c;
    .locals 4

    .line 1
    iget v0, p0, Lpf/l;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lpf/l;->b:Ljava/lang/Object;

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
    check-cast p1, Ldh/e;

    .line 11
    .line 12
    check-cast v1, Lpf/k;

    .line 13
    .line 14
    iget-object v0, v1, Lpf/k;->a:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lk9/a;

    .line 17
    .line 18
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ldh/n;

    .line 23
    .line 24
    iget-object v2, v1, Lpf/k;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v2, Lk9/a;

    .line 27
    .line 28
    invoke-interface {v2}, Lk9/a;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ldh/c;

    .line 33
    .line 34
    iget-object v1, v1, Lpf/k;->c:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Lk9/a;

    .line 37
    .line 38
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ldh/d;

    .line 43
    .line 44
    new-instance v3, Ldh/f;

    .line 45
    .line 46
    invoke-direct {v3, p1, v0, v2, v1}, Ldh/f;-><init>(Ldh/e;Ldh/n;Ldh/c;Ldh/d;)V

    .line 47
    .line 48
    .line 49
    return-object v3

    .line 50
    :pswitch_1
    check-cast p1, Lfg/e;

    .line 51
    .line 52
    check-cast v1, Lig/b;

    .line 53
    .line 54
    iget-object v0, v1, Lig/b;->a:Lk9/a;

    .line 55
    .line 56
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lgg/c;

    .line 61
    .line 62
    new-instance v1, Lgg/b;

    .line 63
    .line 64
    invoke-direct {v1, p1, v0}, Lgg/b;-><init>(Lfg/e;Lgg/c;)V

    .line 65
    .line 66
    .line 67
    return-object v1

    .line 68
    :pswitch_2
    check-cast p1, Lfg/e;

    .line 69
    .line 70
    check-cast v1, Lig/b;

    .line 71
    .line 72
    iget-object v0, v1, Lig/b;->a:Lk9/a;

    .line 73
    .line 74
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lfg/l;

    .line 79
    .line 80
    new-instance v1, Lfg/f;

    .line 81
    .line 82
    invoke-direct {v1, p1, v0}, Lfg/f;-><init>(Lfg/e;Lfg/l;)V

    .line 83
    .line 84
    .line 85
    return-object v1

    .line 86
    :pswitch_3
    check-cast p1, Lyf/d;

    .line 87
    .line 88
    check-cast v1, Lig/b;

    .line 89
    .line 90
    iget-object v0, v1, Lig/b;->a:Lk9/a;

    .line 91
    .line 92
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lyf/h;

    .line 97
    .line 98
    new-instance v1, Lyf/e;

    .line 99
    .line 100
    invoke-direct {v1, p1, v0}, Lyf/e;-><init>(Lyf/d;Lyf/h;)V

    .line 101
    .line 102
    .line 103
    return-object v1

    .line 104
    :pswitch_4
    check-cast p1, Lpf/c;

    .line 105
    .line 106
    check-cast v1, Lpf/k;

    .line 107
    .line 108
    iget-object v0, v1, Lpf/k;->a:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v0, Lk9/a;

    .line 111
    .line 112
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Lpf/m;

    .line 117
    .line 118
    iget-object v2, v1, Lpf/k;->b:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v2, Lk9/a;

    .line 121
    .line 122
    invoke-interface {v2}, Lk9/a;->get()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    check-cast v2, Lrf/d;

    .line 127
    .line 128
    iget-object v1, v1, Lpf/k;->c:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v1, Lk9/a;

    .line 131
    .line 132
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Lrf/n;

    .line 137
    .line 138
    new-instance v3, Lpf/d;

    .line 139
    .line 140
    invoke-direct {v3, p1, v0, v2, v1}, Lpf/d;-><init>(Lpf/c;Lpf/m;Lrf/d;Lrf/n;)V

    .line 141
    .line 142
    .line 143
    return-object v3

    .line 144
    :goto_0
    check-cast p1, Lnh/b;

    .line 145
    .line 146
    check-cast v1, Lig/b;

    .line 147
    .line 148
    iget-object v0, v1, Lig/b;->a:Lk9/a;

    .line 149
    .line 150
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Lnh/f;

    .line 155
    .line 156
    new-instance v1, Lnh/c;

    .line 157
    .line 158
    invoke-direct {v1, p1, v0}, Lnh/c;-><init>(Lnh/b;Lnh/f;)V

    .line 159
    .line 160
    .line 161
    return-object v1

    .line 162
    nop

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
