.class public final Lrc/o;
.super Lrc/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrc/o$a;
    }
.end annotation


# static fields
.field public static final d:Lrc/t;


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lrc/t;->f:Lrc/t$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "application/x-www-form-urlencoded"

    invoke-static {v0}, Lrc/t$a;->a(Ljava/lang/String;)Lrc/t;

    move-result-object v0

    sput-object v0, Lrc/o;->d:Lrc/t;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    const-string v0, "encodedNames"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encodedValues"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lrc/a0;-><init>()V

    invoke-static {p1}, Lsc/c;->v(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lrc/o;->b:Ljava/util/List;

    invoke-static {p2}, Lsc/c;->v(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lrc/o;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrc/o;->d(Led/f;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()Lrc/t;
    .locals 1

    sget-object v0, Lrc/o;->d:Lrc/t;

    return-object v0
.end method

.method public final c(Led/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lrc/o;->d(Led/f;Z)J

    return-void
.end method

.method public final d(Led/f;Z)J
    .locals 4

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance p1, Led/e;

    .line 4
    .line 5
    invoke-direct {p1}, Led/e;-><init>()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Led/f;->getBuffer()Led/e;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    iget-object v0, p0, Lrc/o;->b:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_1
    if-ge v2, v1, :cond_2

    .line 24
    .line 25
    if-lez v2, :cond_1

    .line 26
    .line 27
    const/16 v3, 0x26

    .line 28
    .line 29
    invoke-virtual {p1, v3}, Led/e;->O(I)V

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, v3}, Led/e;->i0(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/16 v3, 0x3d

    .line 42
    .line 43
    invoke-virtual {p1, v3}, Led/e;->O(I)V

    .line 44
    .line 45
    .line 46
    iget-object v3, p0, Lrc/o;->c:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p1, v3}, Led/e;->i0(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    if-eqz p2, :cond_3

    .line 61
    .line 62
    iget-wide v0, p1, Led/e;->b:J

    .line 63
    .line 64
    invoke-virtual {p1}, Led/e;->b()V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    const-wide/16 v0, 0x0

    .line 69
    .line 70
    :goto_2
    return-wide v0
.end method
