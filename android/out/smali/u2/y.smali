.class public final Lu2/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx2/b;


# instance fields
.field public final synthetic a:I

.field public final b:Lk9/a;

.field public final c:Lk9/a;

.field public final d:Lk9/a;

.field public final e:Lk9/a;

.field public final f:Lk9/a;


# direct methods
.method public synthetic constructor <init>(Lx2/b;Lx2/b;Lx2/b;I)V
    .locals 2

    .line 1
    sget-object v0, Ld3/b$a;->a:Ld3/b;

    .line 2
    .line 3
    sget-object v1, Ld3/c$a;->a:Ld3/c;

    .line 4
    .line 5
    iput p4, p0, Lu2/y;->a:I

    .line 6
    .line 7
    iput-object v0, p0, Lu2/y;->b:Lk9/a;

    .line 8
    .line 9
    iput-object v1, p0, Lu2/y;->c:Lk9/a;

    .line 10
    .line 11
    iput-object p1, p0, Lu2/y;->d:Lk9/a;

    .line 12
    .line 13
    iput-object p2, p0, Lu2/y;->e:Lk9/a;

    .line 14
    .line 15
    iput-object p3, p0, Lu2/y;->f:Lk9/a;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Lu2/y;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lu2/y;->f:Lk9/a;

    .line 4
    .line 5
    iget-object v2, p0, Lu2/y;->e:Lk9/a;

    .line 6
    .line 7
    iget-object v3, p0, Lu2/y;->d:Lk9/a;

    .line 8
    .line 9
    iget-object v4, p0, Lu2/y;->c:Lk9/a;

    .line 10
    .line 11
    iget-object v5, p0, Lu2/y;->b:Lk9/a;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :pswitch_0
    invoke-interface {v5}, Lk9/a;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    move-object v6, v0

    .line 22
    check-cast v6, Ld3/a;

    .line 23
    .line 24
    invoke-interface {v4}, Lk9/a;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    move-object v7, v0

    .line 29
    check-cast v7, Ld3/a;

    .line 30
    .line 31
    invoke-interface {v3}, Lk9/a;->get()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    move-object v8, v0

    .line 36
    check-cast v8, Lz2/e;

    .line 37
    .line 38
    invoke-interface {v2}, Lk9/a;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    move-object v9, v0

    .line 43
    check-cast v9, La3/m;

    .line 44
    .line 45
    invoke-interface {v1}, Lk9/a;->get()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    move-object v10, v0

    .line 50
    check-cast v10, La3/o;

    .line 51
    .line 52
    new-instance v0, Lu2/w;

    .line 53
    .line 54
    move-object v5, v0

    .line 55
    invoke-direct/range {v5 .. v10}, Lu2/w;-><init>(Ld3/a;Ld3/a;Lz2/e;La3/m;La3/o;)V

    .line 56
    .line 57
    .line 58
    return-object v0

    .line 59
    :goto_0
    invoke-interface {v5}, Lk9/a;->get()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    move-object v6, v0

    .line 64
    check-cast v6, Ld3/a;

    .line 65
    .line 66
    invoke-interface {v4}, Lk9/a;->get()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    move-object v7, v0

    .line 71
    check-cast v7, Ld3/a;

    .line 72
    .line 73
    invoke-interface {v3}, Lk9/a;->get()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {v2}, Lk9/a;->get()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    sget-object v3, Lx2/a;->c:Ljava/lang/Object;

    .line 82
    .line 83
    instance-of v3, v1, Lw2/a;

    .line 84
    .line 85
    if-eqz v3, :cond_0

    .line 86
    .line 87
    check-cast v1, Lw2/a;

    .line 88
    .line 89
    move-object v10, v1

    .line 90
    goto :goto_1

    .line 91
    :cond_0
    new-instance v3, Lx2/a;

    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-direct {v3, v1}, Lx2/a;-><init>(Lk9/a;)V

    .line 97
    .line 98
    .line 99
    move-object v10, v3

    .line 100
    :goto_1
    new-instance v1, Lb3/r;

    .line 101
    .line 102
    move-object v8, v0

    .line 103
    check-cast v8, Lb3/e;

    .line 104
    .line 105
    move-object v9, v2

    .line 106
    check-cast v9, Lb3/x;

    .line 107
    .line 108
    move-object v5, v1

    .line 109
    invoke-direct/range {v5 .. v10}, Lb3/r;-><init>(Ld3/a;Ld3/a;Lb3/e;Lb3/x;Lw2/a;)V

    .line 110
    .line 111
    .line 112
    return-object v1

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
