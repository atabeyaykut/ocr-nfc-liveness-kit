.class public Lac/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lna/h;


# static fields
.field public static final synthetic b:[Lda/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lda/m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lbc/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lda/m;

    new-instance v1, Lkotlin/jvm/internal/r;

    const-class v2, Lac/a;

    invoke-static {v2}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v2

    const-string v3, "annotations"

    const-string v4, "getAnnotations()Ljava/util/List;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lac/a;->b:[Lda/m;

    return-void
.end method

.method public constructor <init>(Lbc/l;Lx9/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbc/l;",
            "Lx9/a<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lna/c;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, p2}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    move-result-object p1

    iput-object p1, p0, Lac/a;->a:Lbc/i;

    return-void
.end method


# virtual methods
.method public final P(Llb/c;)Z
    .locals 0

    invoke-static {p0, p1}, Lna/h$b;->b(Lna/h;Llb/c;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    sget-object v0, Lac/a;->b:[Lda/m;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    iget-object v1, p0, Lac/a;->a:Lbc/i;

    .line 7
    .line 8
    invoke-static {v1, v0}, Lb8/f;->O(Lbc/i;Lda/m;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lna/c;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lac/a;->b:[Lda/m;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    iget-object v1, p0, Lac/a;->a:Lbc/i;

    .line 7
    .line 8
    invoke-static {v1, v0}, Lb8/f;->O(Lbc/i;Lda/m;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public final n(Llb/c;)Lna/c;
    .locals 0

    invoke-static {p0, p1}, Lna/h$b;->a(Lna/h;Llb/c;)Lna/c;

    move-result-object p1

    return-object p1
.end method
