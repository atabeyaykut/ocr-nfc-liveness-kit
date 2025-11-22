.class public final Lwa/j;
.super Lwa/b;
.source "SourceFile"


# static fields
.field public static final synthetic h:[Lda/m;
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
.field public final g:Lbc/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lda/m;

    new-instance v1, Lkotlin/jvm/internal/r;

    const-class v2, Lwa/j;

    invoke-static {v2}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v2

    const-string v3, "allValueArguments"

    const-string v4, "getAllValueArguments()Ljava/util/Map;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lwa/j;->h:[Lda/m;

    return-void
.end method

.method public constructor <init>(Lcb/a;Lp4/g7;)V
    .locals 1

    const-string v0, "annotation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lja/o$a;->t:Llb/c;

    invoke-direct {p0, p2, p1, v0}, Lwa/b;-><init>(Lp4/g7;Lcb/a;Llb/c;)V

    invoke-virtual {p2}, Lp4/g7;->b()Lbc/l;

    move-result-object p1

    new-instance p2, Lwa/j$a;

    invoke-direct {p2, p0}, Lwa/j$a;-><init>(Lwa/j;)V

    invoke-interface {p1, p2}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    move-result-object p1

    iput-object p1, p0, Lwa/j;->g:Lbc/i;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Llb/f;",
            "Lqb/g<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lwa/j;->h:[Lda/m;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lwa/j;->g:Lbc/i;

    invoke-static {v1, v0}, Lb8/f;->O(Lbc/i;Lda/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method
