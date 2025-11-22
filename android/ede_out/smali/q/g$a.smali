.class public final Lq/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lq/g;)Lq/e;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lq/g<",
            "TT;>;)",
            "Lq/e;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lq/g;->c()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, -0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 15
    .line 16
    :goto_0
    invoke-interface {p0}, Lq/g;->c()Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-interface {p0}, Lq/g;->a()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x0

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    invoke-interface {p0}, Lq/g;->c()Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-interface {p0}, Lq/g;->c()Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    add-int/2addr v5, v3

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/4 v5, 0x0

    .line 50
    :goto_1
    const/4 v3, -0x2

    .line 51
    const/4 v6, 0x0

    .line 52
    if-ne v0, v3, :cond_2

    .line 53
    .line 54
    sget-object v0, Lq/a$b;->a:Lq/a$b;

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    sub-int/2addr v0, v5

    .line 58
    if-lez v0, :cond_3

    .line 59
    .line 60
    new-instance v2, Lq/a$a;

    .line 61
    .line 62
    invoke-direct {v2, v0}, Lq/a$a;-><init>(I)V

    .line 63
    .line 64
    .line 65
    move-object v0, v2

    .line 66
    goto :goto_2

    .line 67
    :cond_3
    sub-int/2addr v2, v5

    .line 68
    if-lez v2, :cond_4

    .line 69
    .line 70
    new-instance v0, Lq/a$a;

    .line 71
    .line 72
    invoke-direct {v0, v2}, Lq/a$a;-><init>(I)V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    move-object v0, v6

    .line 77
    :goto_2
    if-nez v0, :cond_5

    .line 78
    .line 79
    return-object v6

    .line 80
    :cond_5
    invoke-interface {p0}, Lq/g;->c()Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    if-nez v2, :cond_6

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_6
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 92
    .line 93
    :goto_3
    invoke-interface {p0}, Lq/g;->c()Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    invoke-interface {p0}, Lq/g;->a()Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-eqz v5, :cond_7

    .line 106
    .line 107
    invoke-interface {p0}, Lq/g;->c()Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    invoke-interface {p0}, Lq/g;->c()Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    add-int/2addr v4, p0

    .line 124
    :cond_7
    if-ne v1, v3, :cond_8

    .line 125
    .line 126
    sget-object p0, Lq/a$b;->a:Lq/a$b;

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_8
    sub-int/2addr v1, v4

    .line 130
    if-lez v1, :cond_9

    .line 131
    .line 132
    new-instance p0, Lq/a$a;

    .line 133
    .line 134
    invoke-direct {p0, v1}, Lq/a$a;-><init>(I)V

    .line 135
    .line 136
    .line 137
    goto :goto_4

    .line 138
    :cond_9
    sub-int/2addr v2, v4

    .line 139
    if-lez v2, :cond_a

    .line 140
    .line 141
    new-instance p0, Lq/a$a;

    .line 142
    .line 143
    invoke-direct {p0, v2}, Lq/a$a;-><init>(I)V

    .line 144
    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_a
    move-object p0, v6

    .line 148
    :goto_4
    if-nez p0, :cond_b

    .line 149
    .line 150
    return-object v6

    .line 151
    :cond_b
    new-instance v1, Lq/e;

    .line 152
    .line 153
    invoke-direct {v1, v0, p0}, Lq/e;-><init>(Lq/a;Lq/a;)V

    .line 154
    .line 155
    .line 156
    return-object v1
.end method
