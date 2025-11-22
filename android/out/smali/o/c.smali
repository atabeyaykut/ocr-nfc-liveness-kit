.class public final Lo/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ll9/e;

.field public final b:Ll9/e;

.field public final c:J

.field public final d:J

.field public final e:Z

.field public final f:Lrc/q;


# direct methods
.method public constructor <init>(Led/d0;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo/a;

    invoke-direct {v0, p0}, Lo/a;-><init>(Lo/c;)V

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lc5/y;->v(ILx9/a;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Lo/c;->a:Ll9/e;

    new-instance v0, Lo/b;

    invoke-direct {v0, p0}, Lo/b;-><init>(Lo/c;)V

    invoke-static {v1, v0}, Lc5/y;->v(ILx9/a;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Lo/c;->b:Ll9/e;

    invoke-virtual {p1}, Led/d0;->a0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lo/c;->c:J

    invoke-virtual {p1}, Led/d0;->a0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lo/c;->d:J

    invoke-virtual {p1}, Led/d0;->a0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lo/c;->e:Z

    invoke-virtual {p1}, Led/d0;->a0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v3, Lrc/q$a;

    invoke-direct {v3}, Lrc/q$a;-><init>()V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1}, Led/d0;->a0()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x3a

    const/4 v7, 0x6

    .line 1
    invoke-static {v5, v6, v2, v2, v7}, Lmc/n;->M(Ljava/lang/CharSequence;CIZI)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_2

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lmc/n;->i0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v7, v5}, Lrc/q$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "Unexpected header: "

    invoke-virtual {p1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_3
    invoke-virtual {v3}, Lrc/q$a;->c()Lrc/q;

    move-result-object p1

    iput-object p1, p0, Lo/c;->f:Lrc/q;

    return-void
.end method

.method public constructor <init>(Lrc/b0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo/a;

    invoke-direct {v0, p0}, Lo/a;-><init>(Lo/c;)V

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lc5/y;->v(ILx9/a;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Lo/c;->a:Ll9/e;

    new-instance v0, Lo/b;

    invoke-direct {v0, p0}, Lo/b;-><init>(Lo/c;)V

    invoke-static {v1, v0}, Lc5/y;->v(ILx9/a;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Lo/c;->b:Ll9/e;

    .line 3
    iget-wide v0, p1, Lrc/b0;->m:J

    .line 4
    iput-wide v0, p0, Lo/c;->c:J

    iget-wide v0, p1, Lrc/b0;->n:J

    iput-wide v0, p0, Lo/c;->d:J

    iget-object v0, p1, Lrc/b0;->f:Lrc/p;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lo/c;->e:Z

    iget-object p1, p1, Lrc/b0;->g:Lrc/q;

    iput-object p1, p0, Lo/c;->f:Lrc/q;

    return-void
.end method


# virtual methods
.method public final a(Led/b0;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lo/c;->c:J

    .line 2
    .line 3
    invoke-virtual {p1, v0, v1}, Led/b0;->m0(J)Led/f;

    .line 4
    .line 5
    .line 6
    const/16 v0, 0xa

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Led/b0;->writeByte(I)Led/f;

    .line 9
    .line 10
    .line 11
    iget-wide v1, p0, Lo/c;->d:J

    .line 12
    .line 13
    invoke-virtual {p1, v1, v2}, Led/b0;->m0(J)Led/f;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Led/b0;->writeByte(I)Led/f;

    .line 17
    .line 18
    .line 19
    iget-boolean v1, p0, Lo/c;->e:Z

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const-wide/16 v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-wide/16 v1, 0x0

    .line 27
    .line 28
    :goto_0
    invoke-virtual {p1, v1, v2}, Led/b0;->m0(J)Led/f;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Led/b0;->writeByte(I)Led/f;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lo/c;->f:Lrc/q;

    .line 35
    .line 36
    iget-object v2, v1, Lrc/q;->a:[Ljava/lang/String;

    .line 37
    .line 38
    array-length v2, v2

    .line 39
    div-int/lit8 v2, v2, 0x2

    .line 40
    .line 41
    int-to-long v2, v2

    .line 42
    invoke-virtual {p1, v2, v3}, Led/b0;->m0(J)Led/f;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Led/b0;->writeByte(I)Led/f;

    .line 46
    .line 47
    .line 48
    iget-object v2, v1, Lrc/q;->a:[Ljava/lang/String;

    .line 49
    .line 50
    array-length v2, v2

    .line 51
    div-int/lit8 v2, v2, 0x2

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    :goto_1
    if-ge v3, v2, :cond_1

    .line 55
    .line 56
    add-int/lit8 v4, v3, 0x1

    .line 57
    .line 58
    invoke-virtual {v1, v3}, Lrc/q;->o(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {p1, v5}, Led/b0;->S(Ljava/lang/String;)Led/f;

    .line 63
    .line 64
    .line 65
    const-string v5, ": "

    .line 66
    .line 67
    invoke-virtual {p1, v5}, Led/b0;->S(Ljava/lang/String;)Led/f;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v3}, Lrc/q;->w(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-interface {p1, v3}, Led/f;->S(Ljava/lang/String;)Led/f;

    .line 75
    .line 76
    .line 77
    invoke-interface {p1, v0}, Led/f;->writeByte(I)Led/f;

    .line 78
    .line 79
    .line 80
    move v3, v4

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    return-void
.end method
