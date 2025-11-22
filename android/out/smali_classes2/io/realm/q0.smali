.class public final Lio/realm/q0;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Lio/realm/OrderedRealmCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/q0$b;,
        Lio/realm/q0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;",
        "Lio/realm/OrderedRealmCollection<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final b:Lio/realm/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/x<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final c:Lio/realm/a;

.field public final d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/q0;->c:Lio/realm/a;

    iput-object v0, p0, Lio/realm/q0;->b:Lio/realm/x;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/q0;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lio/realm/q0;->a:Ljava/lang/Class;

    .line 5
    .line 6
    const-class v0, Lio/realm/s0;

    .line 7
    .line 8
    invoke-virtual {v0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lio/realm/t0;

    .line 15
    .line 16
    invoke-direct {v0, p1, p2, p3}, Lio/realm/t0;-><init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    .line 17
    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_0
    const-class v0, Ljava/lang/String;

    .line 22
    .line 23
    if-ne p3, v0, :cond_1

    .line 24
    .line 25
    new-instance v0, Lio/realm/b1;

    .line 26
    .line 27
    invoke-direct {v0, p1, p2, p3}, Lio/realm/b1;-><init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :cond_1
    const-class v0, Ljava/lang/Long;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    if-eq p3, v0, :cond_c

    .line 36
    .line 37
    const-class v0, Ljava/lang/Integer;

    .line 38
    .line 39
    if-eq p3, v0, :cond_c

    .line 40
    .line 41
    const-class v0, Ljava/lang/Short;

    .line 42
    .line 43
    if-eq p3, v0, :cond_c

    .line 44
    .line 45
    const-class v0, Ljava/lang/Byte;

    .line 46
    .line 47
    if-ne p3, v0, :cond_2

    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :cond_2
    const-class v0, Ljava/lang/Boolean;

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    if-ne p3, v0, :cond_3

    .line 55
    .line 56
    new-instance v0, Lio/realm/e;

    .line 57
    .line 58
    invoke-direct {v0, p1, p2, p3, v2}, Lio/realm/e;-><init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;I)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :cond_3
    const-class v0, [B

    .line 64
    .line 65
    if-ne p3, v0, :cond_4

    .line 66
    .line 67
    new-instance v0, Lio/realm/c;

    .line 68
    .line 69
    invoke-direct {v0, p1, p2, p3, v2}, Lio/realm/c;-><init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;I)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    const-class v0, Ljava/lang/Double;

    .line 74
    .line 75
    if-ne p3, v0, :cond_5

    .line 76
    .line 77
    new-instance v0, Lio/realm/l;

    .line 78
    .line 79
    invoke-direct {v0, p1, p2, p3}, Lio/realm/l;-><init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_5
    const-class v0, Ljava/lang/Float;

    .line 84
    .line 85
    if-ne p3, v0, :cond_6

    .line 86
    .line 87
    new-instance v0, Lio/realm/q;

    .line 88
    .line 89
    invoke-direct {v0, p1, p2, p3}, Lio/realm/q;-><init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_6
    const-class v0, Ljava/util/Date;

    .line 94
    .line 95
    if-ne p3, v0, :cond_7

    .line 96
    .line 97
    new-instance v0, Lio/realm/h;

    .line 98
    .line 99
    invoke-direct {v0, p1, p2, p3}, Lio/realm/h;-><init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_7
    const-class v0, Lorg/bson/types/Decimal128;

    .line 104
    .line 105
    if-ne p3, v0, :cond_8

    .line 106
    .line 107
    new-instance v0, Lio/realm/j;

    .line 108
    .line 109
    invoke-direct {v0, p1, p2, p3}, Lio/realm/j;-><init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_8
    const-class v0, Lorg/bson/types/ObjectId;

    .line 114
    .line 115
    if-ne p3, v0, :cond_9

    .line 116
    .line 117
    new-instance v0, Lio/realm/e;

    .line 118
    .line 119
    invoke-direct {v0, p1, p2, p3, v1}, Lio/realm/e;-><init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;I)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_9
    const-class v0, Ljava/util/UUID;

    .line 124
    .line 125
    if-ne p3, v0, :cond_a

    .line 126
    .line 127
    new-instance v0, Lio/realm/c;

    .line 128
    .line 129
    const/4 v1, 0x2

    .line 130
    invoke-direct {v0, p1, p2, p3, v1}, Lio/realm/c;-><init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;I)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_a
    const-class v0, Lio/realm/h0;

    .line 135
    .line 136
    if-ne p3, v0, :cond_b

    .line 137
    .line 138
    new-instance v0, Lio/realm/i0;

    .line 139
    .line 140
    invoke-direct {v0, p1, p2, p3}, Lio/realm/i0;-><init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 145
    .line 146
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    const-string p3, "Unexpected value class: "

    .line 151
    .line 152
    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p1

    .line 160
    :cond_c
    :goto_0
    new-instance v0, Lio/realm/c;

    .line 161
    .line 162
    invoke-direct {v0, p1, p2, p3, v1}, Lio/realm/c;-><init>(Lio/realm/a;Lio/realm/internal/OsList;Ljava/lang/Class;I)V

    .line 163
    .line 164
    .line 165
    :goto_1
    iput-object v0, p0, Lio/realm/q0;->b:Lio/realm/x;

    .line 166
    .line 167
    iput-object p1, p0, Lio/realm/q0;->c:Lio/realm/a;

    .line 168
    .line 169
    return-void
.end method

.method public static synthetic h(Lio/realm/q0;)I
    .locals 0

    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    return p0
.end method

.method public static synthetic l(Lio/realm/q0;)I
    .locals 0

    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    return p0
.end method

.method public static synthetic m(Lio/realm/q0;)I
    .locals 0

    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    return p0
.end method

.method public static synthetic o(Lio/realm/q0;)I
    .locals 0

    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    return p0
.end method

.method public static synthetic u(Lio/realm/q0;)I
    .locals 0

    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    return p0
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lio/realm/q0;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/realm/q0;->w()V

    .line 1
    iget-object v0, p0, Lio/realm/q0;->b:Lio/realm/x;

    invoke-virtual {v0, p2}, Lio/realm/x;->c(Ljava/lang/Object;)V

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lio/realm/x;->e(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lio/realm/x;->f(ILjava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lio/realm/q0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lio/realm/q0;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/realm/q0;->w()V

    .line 4
    iget-object v0, p0, Lio/realm/q0;->b:Lio/realm/x;

    invoke-virtual {v0, p1}, Lio/realm/x;->c(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 5
    iget-object p1, v0, Lio/realm/x;->b:Lio/realm/internal/OsList;

    invoke-virtual {p1}, Lio/realm/internal/OsList;->h()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lio/realm/x;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lio/realm/q0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v0
.end method

.method public final clear()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/q0;->x()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/realm/q0;->w()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lio/realm/q0;->b:Lio/realm/x;

    .line 11
    .line 12
    iget-object v0, v0, Lio/realm/x;->b:Lio/realm/internal/OsList;

    .line 13
    .line 14
    invoke-virtual {v0}, Lio/realm/internal/OsList;->I()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lio/realm/q0;->d:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 28
    .line 29
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/realm/q0;->x()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lio/realm/q0;->c:Lio/realm/a;

    .line 8
    .line 9
    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 10
    .line 11
    .line 12
    instance-of v0, p1, Lio/realm/internal/n;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    move-object v0, p1

    .line 17
    check-cast v0, Lio/realm/internal/n;

    .line 18
    .line 19
    invoke-interface {v0}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v0, v0, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 24
    .line 25
    sget-object v1, Lio/realm/internal/g;->a:Lio/realm/internal/g;

    .line 26
    .line 27
    if-ne v0, v1, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    return p1

    .line 31
    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->contains(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    return p1

    .line 36
    :cond_1
    iget-object v0, p0, Lio/realm/q0;->d:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/realm/q0;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/realm/q0;->w()V

    iget-object v0, p0, Lio/realm/q0;->b:Lio/realm/x;

    invoke-virtual {v0, p1}, Lio/realm/x;->d(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lio/realm/q0;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/realm/q0;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lio/realm/q0$a;

    invoke-direct {v0, p0}, Lio/realm/q0$a;-><init>(Lio/realm/q0;)V

    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/realm/q0;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/realm/q0;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lio/realm/q0$b;

    invoke-direct {v0, p0, p1}, Lio/realm/q0$b;-><init>(Lio/realm/q0;I)V

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    return-object p1
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/realm/q0;->x()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/realm/q0;->w()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lio/realm/q0;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lio/realm/q0;->b:Lio/realm/x;

    .line 15
    .line 16
    iget-object v1, v1, Lio/realm/x;->b:Lio/realm/internal/OsList;

    .line 17
    .line 18
    int-to-long v2, p1

    .line 19
    invoke-virtual {v1, v2, v3}, Lio/realm/internal/OsList;->H(J)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lio/realm/q0;->d:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_0
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 30
    .line 31
    add-int/lit8 p1, p1, 0x1

    .line 32
    .line 33
    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 34
    .line 35
    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lio/realm/q0;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/realm/q0;->c:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Objects can only be removed from inside a write transaction."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lio/realm/q0;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/realm/q0;->c:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Objects can only be removed from inside a write transaction."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Ljava/util/AbstractList;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/realm/q0;->x()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/realm/q0;->w()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lio/realm/q0;->b:Lio/realm/x;

    .line 11
    .line 12
    invoke-virtual {v0, p2}, Lio/realm/x;->c(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lio/realm/x;->d(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lio/realm/x;->g(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0, p1, p2}, Lio/realm/x;->h(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Lio/realm/q0;->d:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :goto_0
    return-object v1
.end method

.method public final size()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lio/realm/q0;->x()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/realm/q0;->w()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lio/realm/q0;->b:Lio/realm/x;

    .line 11
    .line 12
    iget-object v0, v0, Lio/realm/x;->b:Lio/realm/internal/OsList;

    .line 13
    .line 14
    invoke-virtual {v0}, Lio/realm/internal/OsList;->W()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    const-wide/32 v2, 0x7fffffff

    .line 19
    .line 20
    .line 21
    cmp-long v4, v0, v2

    .line 22
    .line 23
    if-gez v4, :cond_0

    .line 24
    .line 25
    long-to-int v1, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const v1, 0x7fffffff

    .line 28
    .line 29
    .line 30
    :goto_0
    return v1

    .line 31
    :cond_1
    iget-object v0, p0, Lio/realm/q0;->d:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lio/realm/q0;->x()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const-string v2, "byte["

    .line 11
    .line 12
    const-string v3, ","

    .line 13
    .line 14
    const-string v4, "]"

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x1

    .line 18
    if-nez v1, :cond_3

    .line 19
    .line 20
    const-string v1, "RealmList<?>@["

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lio/realm/q0;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    :goto_0
    if-ge v5, v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0, v5}, Lio/realm/q0;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    instance-of v8, v7, Lio/realm/s0;

    .line 36
    .line 37
    if-eqz v8, :cond_0

    .line 38
    .line 39
    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    instance-of v8, v7, [B

    .line 48
    .line 49
    if-eqz v8, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    check-cast v7, [B

    .line 55
    .line 56
    array-length v7, v7

    .line 57
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    add-int/lit8 v5, v5, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {p0}, Lio/realm/q0;->size()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-lez v1, :cond_c

    .line 78
    .line 79
    goto/16 :goto_7

    .line 80
    .line 81
    :cond_3
    const-string v1, "RealmList<"

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-class v1, Lio/realm/s0;

    .line 87
    .line 88
    iget-object v7, p0, Lio/realm/q0;->a:Ljava/lang/Class;

    .line 89
    .line 90
    invoke-virtual {v1, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    if-eqz v8, :cond_4

    .line 95
    .line 96
    iget-object v8, p0, Lio/realm/q0;->c:Lio/realm/a;

    .line 97
    .line 98
    invoke-virtual {v8}, Lio/realm/a;->i()Lio/realm/z0;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    invoke-virtual {v8, v7}, Lio/realm/z0;->b(Ljava/lang/Class;)Lio/realm/x0;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    iget-object v8, v8, Lio/realm/x0;->b:Lio/realm/internal/Table;

    .line 107
    .line 108
    invoke-virtual {v8}, Lio/realm/internal/Table;->f()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    goto :goto_2

    .line 113
    :cond_4
    const-class v8, [B

    .line 114
    .line 115
    if-ne v7, v8, :cond_5

    .line 116
    .line 117
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    goto :goto_2

    .line 122
    :cond_5
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    :goto_2
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v8, ">@["

    .line 130
    .line 131
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    iget-object v8, p0, Lio/realm/q0;->b:Lio/realm/x;

    .line 135
    .line 136
    if-eqz v8, :cond_6

    .line 137
    .line 138
    iget-object v8, v8, Lio/realm/x;->b:Lio/realm/internal/OsList;

    .line 139
    .line 140
    invoke-virtual {v8}, Lio/realm/internal/OsList;->G()Z

    .line 141
    .line 142
    .line 143
    move-result v8

    .line 144
    if-eqz v8, :cond_6

    .line 145
    .line 146
    const/4 v8, 0x1

    .line 147
    goto :goto_3

    .line 148
    :cond_6
    const/4 v8, 0x0

    .line 149
    :goto_3
    if-nez v8, :cond_7

    .line 150
    .line 151
    const-string v1, "invalid"

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    goto :goto_8

    .line 157
    :cond_7
    invoke-virtual {v1, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_9

    .line 162
    .line 163
    :goto_4
    invoke-virtual {p0}, Lio/realm/q0;->size()I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-ge v5, v1, :cond_8

    .line 168
    .line 169
    invoke-virtual {p0, v5}, Lio/realm/q0;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    check-cast v1, Lio/realm/internal/n;

    .line 174
    .line 175
    invoke-interface {v1}, Lio/realm/internal/n;->b()Lio/realm/f0;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    iget-object v1, v1, Lio/realm/f0;->c:Lio/realm/internal/p;

    .line 180
    .line 181
    invoke-interface {v1}, Lio/realm/internal/p;->Y()J

    .line 182
    .line 183
    .line 184
    move-result-wide v1

    .line 185
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    add-int/lit8 v5, v5, 0x1

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_8
    invoke-virtual {p0}, Lio/realm/q0;->size()I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-lez v1, :cond_c

    .line 199
    .line 200
    goto :goto_7

    .line 201
    :cond_9
    :goto_5
    invoke-virtual {p0}, Lio/realm/q0;->size()I

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-ge v5, v1, :cond_b

    .line 206
    .line 207
    invoke-virtual {p0, v5}, Lio/realm/q0;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    instance-of v7, v1, [B

    .line 212
    .line 213
    if-eqz v7, :cond_a

    .line 214
    .line 215
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    check-cast v1, [B

    .line 219
    .line 220
    array-length v1, v1

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    goto :goto_6

    .line 228
    :cond_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    :goto_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    add-int/lit8 v5, v5, 0x1

    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_b
    invoke-virtual {p0}, Lio/realm/q0;->size()I

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-lez v1, :cond_c

    .line 242
    .line 243
    :goto_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    sub-int/2addr v1, v6

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 249
    .line 250
    .line 251
    :cond_c
    :goto_8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    return-object v0
.end method

.method public final w()V
    .locals 1

    iget-object v0, p0, Lio/realm/q0;->c:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->b()V

    return-void
.end method

.method public final x()Z
    .locals 1

    iget-object v0, p0, Lio/realm/q0;->c:Lio/realm/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
