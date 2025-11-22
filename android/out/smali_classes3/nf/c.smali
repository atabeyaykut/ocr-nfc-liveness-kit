.class public final Lnf/c;
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
.method public synthetic constructor <init>(Lk9/a;Lk9/a;Lk9/a;Lk9/a;Lk9/a;I)V
    .locals 0

    iput p6, p0, Lnf/c;->a:I

    iput-object p1, p0, Lnf/c;->b:Lk9/a;

    iput-object p2, p0, Lnf/c;->c:Lk9/a;

    iput-object p3, p0, Lnf/c;->d:Lk9/a;

    iput-object p4, p0, Lnf/c;->e:Lk9/a;

    iput-object p5, p0, Lnf/c;->f:Lk9/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lnf/c;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lnf/c;->f:Lk9/a;

    .line 4
    .line 5
    iget-object v2, p0, Lnf/c;->e:Lk9/a;

    .line 6
    .line 7
    iget-object v3, p0, Lnf/c;->d:Lk9/a;

    .line 8
    .line 9
    iget-object v4, p0, Lnf/c;->c:Lk9/a;

    .line 10
    .line 11
    iget-object v5, p0, Lnf/c;->b:Lk9/a;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :pswitch_0
    new-instance v0, Ltf/g;

    .line 18
    .line 19
    invoke-direct {v0}, Ltf/g;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-interface {v5}, Lk9/a;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    check-cast v5, Lud/d0;

    .line 27
    .line 28
    iput-object v5, v0, Ltf/g;->a:Lud/d0;

    .line 29
    .line 30
    invoke-interface {v4}, Lk9/a;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Ljava/lang/String;

    .line 35
    .line 36
    iput-object v4, v0, Ltf/g;->b:Ljava/lang/String;

    .line 37
    .line 38
    invoke-interface {v3}, Lk9/a;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Ljava/lang/String;

    .line 43
    .line 44
    iput-object v3, v0, Ltf/g;->c:Ljava/lang/String;

    .line 45
    .line 46
    invoke-interface {v2}, Lk9/a;->get()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Ljava/lang/String;

    .line 51
    .line 52
    iput-object v2, v0, Ltf/g;->d:Ljava/lang/String;

    .line 53
    .line 54
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lgf/b;

    .line 59
    .line 60
    iput-object v1, v0, Ltf/g;->e:Lgf/b;

    .line 61
    .line 62
    return-object v0

    .line 63
    :pswitch_1
    new-instance v0, Lnf/b;

    .line 64
    .line 65
    invoke-direct {v0}, Lnf/b;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-interface {v5}, Lk9/a;->get()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    check-cast v5, Lud/d0;

    .line 73
    .line 74
    iput-object v5, v0, Lnf/b;->a:Lud/d0;

    .line 75
    .line 76
    invoke-interface {v4}, Lk9/a;->get()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    check-cast v4, Ljava/lang/String;

    .line 81
    .line 82
    iput-object v4, v0, Lnf/b;->b:Ljava/lang/String;

    .line 83
    .line 84
    invoke-interface {v3}, Lk9/a;->get()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Ljava/lang/String;

    .line 89
    .line 90
    iput-object v3, v0, Lnf/b;->c:Ljava/lang/String;

    .line 91
    .line 92
    invoke-interface {v2}, Lk9/a;->get()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Ljava/lang/String;

    .line 97
    .line 98
    iput-object v2, v0, Lnf/b;->d:Ljava/lang/String;

    .line 99
    .line 100
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    check-cast v1, Lgf/b;

    .line 105
    .line 106
    iput-object v1, v0, Lnf/b;->e:Lgf/b;

    .line 107
    .line 108
    return-object v0

    .line 109
    :goto_0
    new-instance v0, Ljh/a;

    .line 110
    .line 111
    invoke-direct {v0}, Ljh/a;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-interface {v5}, Lk9/a;->get()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    check-cast v5, Lud/d0;

    .line 119
    .line 120
    iput-object v5, v0, Ljh/a;->a:Lud/d0;

    .line 121
    .line 122
    invoke-interface {v4}, Lk9/a;->get()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    check-cast v4, Ljava/lang/String;

    .line 127
    .line 128
    iput-object v4, v0, Ljh/a;->b:Ljava/lang/String;

    .line 129
    .line 130
    invoke-interface {v3}, Lk9/a;->get()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    check-cast v3, Ljava/lang/String;

    .line 135
    .line 136
    iput-object v3, v0, Ljh/a;->c:Ljava/lang/String;

    .line 137
    .line 138
    invoke-interface {v2}, Lk9/a;->get()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    check-cast v2, Ljava/lang/String;

    .line 143
    .line 144
    iput-object v2, v0, Ljh/a;->d:Ljava/lang/String;

    .line 145
    .line 146
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    check-cast v1, Lgf/b;

    .line 151
    .line 152
    iput-object v1, v0, Ljh/a;->e:Lgf/b;

    .line 153
    .line 154
    return-object v0

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
