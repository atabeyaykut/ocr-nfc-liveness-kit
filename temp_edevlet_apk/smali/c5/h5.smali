.class public final Lc5/h5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lc5/v5;


# direct methods
.method public constructor <init>(Lc5/v5;Z)V
    .locals 0

    iput-object p1, p0, Lc5/h5;->b:Lc5/v5;

    iput-boolean p2, p0, Lc5/h5;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lc5/h5;->b:Lc5/v5;

    .line 2
    .line 3
    iget-object v0, v0, Lc5/x4;->a:Lc5/z4;

    .line 4
    .line 5
    check-cast v0, Lc5/i4;

    .line 6
    .line 7
    invoke-virtual {v0}, Lc5/i4;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lc5/h5;->b:Lc5/v5;

    .line 12
    .line 13
    iget-object v1, v1, Lc5/x4;->a:Lc5/z4;

    .line 14
    .line 15
    check-cast v1, Lc5/i4;

    .line 16
    .line 17
    iget-object v2, v1, Lc5/i4;->D:Ljava/lang/Boolean;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    iget-object v1, v1, Lc5/i4;->D:Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 34
    :goto_0
    iget-object v2, p0, Lc5/h5;->b:Lc5/v5;

    .line 35
    .line 36
    iget-object v2, v2, Lc5/x4;->a:Lc5/z4;

    .line 37
    .line 38
    check-cast v2, Lc5/i4;

    .line 39
    .line 40
    iget-boolean v5, p0, Lc5/h5;->a:Z

    .line 41
    .line 42
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    iput-object v5, v2, Lc5/i4;->D:Ljava/lang/Boolean;

    .line 47
    .line 48
    iget-boolean v2, p0, Lc5/h5;->a:Z

    .line 49
    .line 50
    if-ne v1, v2, :cond_1

    .line 51
    .line 52
    iget-object v1, p0, Lc5/h5;->b:Lc5/v5;

    .line 53
    .line 54
    iget-object v1, v1, Lc5/x4;->a:Lc5/z4;

    .line 55
    .line 56
    check-cast v1, Lc5/i4;

    .line 57
    .line 58
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 59
    .line 60
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, v1, Lc5/e3;->p:Lc5/c3;

    .line 64
    .line 65
    iget-boolean v2, p0, Lc5/h5;->a:Z

    .line 66
    .line 67
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const-string v5, "Default data collection state already set to"

    .line 72
    .line 73
    invoke-virtual {v1, v2, v5}, Lc5/c3;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    iget-object v1, p0, Lc5/h5;->b:Lc5/v5;

    .line 77
    .line 78
    iget-object v1, v1, Lc5/x4;->a:Lc5/z4;

    .line 79
    .line 80
    check-cast v1, Lc5/i4;

    .line 81
    .line 82
    invoke-virtual {v1}, Lc5/i4;->a()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eq v1, v0, :cond_3

    .line 87
    .line 88
    iget-object v1, p0, Lc5/h5;->b:Lc5/v5;

    .line 89
    .line 90
    iget-object v1, v1, Lc5/x4;->a:Lc5/z4;

    .line 91
    .line 92
    check-cast v1, Lc5/i4;

    .line 93
    .line 94
    invoke-virtual {v1}, Lc5/i4;->a()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    iget-object v2, p0, Lc5/h5;->b:Lc5/v5;

    .line 99
    .line 100
    iget-object v2, v2, Lc5/x4;->a:Lc5/z4;

    .line 101
    .line 102
    check-cast v2, Lc5/i4;

    .line 103
    .line 104
    iget-object v5, v2, Lc5/i4;->D:Ljava/lang/Boolean;

    .line 105
    .line 106
    if-eqz v5, :cond_2

    .line 107
    .line 108
    iget-object v2, v2, Lc5/i4;->D:Ljava/lang/Boolean;

    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_2

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_2
    const/4 v3, 0x0

    .line 118
    :goto_1
    if-eq v1, v3, :cond_4

    .line 119
    .line 120
    :cond_3
    iget-object v1, p0, Lc5/h5;->b:Lc5/v5;

    .line 121
    .line 122
    iget-object v1, v1, Lc5/x4;->a:Lc5/z4;

    .line 123
    .line 124
    check-cast v1, Lc5/i4;

    .line 125
    .line 126
    iget-object v1, v1, Lc5/i4;->j:Lc5/e3;

    .line 127
    .line 128
    invoke-static {v1}, Lc5/i4;->e(Lc5/y4;)V

    .line 129
    .line 130
    .line 131
    iget-object v1, v1, Lc5/e3;->l:Lc5/c3;

    .line 132
    .line 133
    iget-boolean v2, p0, Lc5/h5;->a:Z

    .line 134
    .line 135
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const-string v3, "Default data collection is different than actual status"

    .line 144
    .line 145
    invoke-virtual {v1, v2, v3, v0}, Lc5/c3;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    :cond_4
    iget-object v0, p0, Lc5/h5;->b:Lc5/v5;

    .line 149
    .line 150
    invoke-virtual {v0}, Lc5/v5;->z()V

    .line 151
    .line 152
    .line 153
    return-void
.end method
