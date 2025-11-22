.class public final Lmf/j;
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

    iput p1, p0, Lmf/j;->a:I

    iput-object p2, p0, Lmf/j;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lr0/p;)Laf/c;
    .locals 4

    .line 1
    iget v0, p0, Lmf/j;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lmf/j;->b:Ljava/lang/Object;

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
    check-cast p1, Lvg/c;

    .line 11
    .line 12
    check-cast v1, Lmf/i;

    .line 13
    .line 14
    iget-object v0, v1, Lmf/i;->a:Lk9/a;

    .line 15
    .line 16
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lvg/g;

    .line 21
    .line 22
    new-instance v1, Lvg/d;

    .line 23
    .line 24
    invoke-direct {v1, p1, v0}, Lvg/d;-><init>(Lvg/c;Lvg/g;)V

    .line 25
    .line 26
    .line 27
    return-object v1

    .line 28
    :pswitch_1
    check-cast p1, Lng/i;

    .line 29
    .line 30
    check-cast v1, Ls4/y1;

    .line 31
    .line 32
    iget-object v0, v1, Ls4/y1;->a:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Lk9/a;

    .line 35
    .line 36
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lng/a;

    .line 41
    .line 42
    iget-object v1, v1, Ls4/y1;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Lk9/a;

    .line 45
    .line 46
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lng/l;

    .line 51
    .line 52
    new-instance v2, Lng/k;

    .line 53
    .line 54
    invoke-direct {v2, p1, v0, v1}, Lng/k;-><init>(Lng/i;Lng/a;Lng/l;)V

    .line 55
    .line 56
    .line 57
    return-object v2

    .line 58
    :pswitch_2
    check-cast p1, Lvf/b;

    .line 59
    .line 60
    check-cast v1, Lqf/k;

    .line 61
    .line 62
    iget-object v0, v1, Lqf/k;->a:Lk9/a;

    .line 63
    .line 64
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lvf/j;

    .line 69
    .line 70
    iget-object v2, v1, Lqf/k;->b:Lk9/a;

    .line 71
    .line 72
    invoke-interface {v2}, Lk9/a;->get()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lrf/d;

    .line 77
    .line 78
    iget-object v1, v1, Lqf/k;->c:Lk9/a;

    .line 79
    .line 80
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Lrf/n;

    .line 85
    .line 86
    new-instance v3, Lvf/c;

    .line 87
    .line 88
    invoke-direct {v3, p1, v0, v2, v1}, Lvf/c;-><init>(Lvf/b;Lvf/j;Lrf/d;Lrf/n;)V

    .line 89
    .line 90
    .line 91
    return-object v3

    .line 92
    :pswitch_3
    check-cast p1, Lqf/c;

    .line 93
    .line 94
    check-cast v1, Lqf/k;

    .line 95
    .line 96
    iget-object v0, v1, Lqf/k;->a:Lk9/a;

    .line 97
    .line 98
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lqf/l;

    .line 103
    .line 104
    iget-object v2, v1, Lqf/k;->b:Lk9/a;

    .line 105
    .line 106
    invoke-interface {v2}, Lk9/a;->get()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Lrf/d;

    .line 111
    .line 112
    iget-object v1, v1, Lqf/k;->c:Lk9/a;

    .line 113
    .line 114
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    check-cast v1, Lrf/n;

    .line 119
    .line 120
    new-instance v3, Lqf/d;

    .line 121
    .line 122
    invoke-direct {v3, p1, v0, v2, v1}, Lqf/d;-><init>(Lqf/c;Lqf/l;Lrf/d;Lrf/n;)V

    .line 123
    .line 124
    .line 125
    return-object v3

    .line 126
    :pswitch_4
    check-cast p1, Lmf/e;

    .line 127
    .line 128
    check-cast v1, Lmf/i;

    .line 129
    .line 130
    iget-object v0, v1, Lmf/i;->a:Lk9/a;

    .line 131
    .line 132
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Lmf/k;

    .line 137
    .line 138
    new-instance v1, Lmf/f;

    .line 139
    .line 140
    invoke-direct {v1, p1, v0}, Lmf/f;-><init>(Lmf/e;Lmf/k;)V

    .line 141
    .line 142
    .line 143
    return-object v1

    .line 144
    :goto_0
    check-cast p1, Lwg/c;

    .line 145
    .line 146
    check-cast v1, Lmf/i;

    .line 147
    .line 148
    iget-object v0, v1, Lmf/i;->a:Lk9/a;

    .line 149
    .line 150
    invoke-interface {v0}, Lk9/a;->get()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Lwg/g;

    .line 155
    .line 156
    new-instance v1, Lwg/d;

    .line 157
    .line 158
    invoke-direct {v1, p1, v0}, Lwg/d;-><init>(Lwg/c;Lwg/g;)V

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
