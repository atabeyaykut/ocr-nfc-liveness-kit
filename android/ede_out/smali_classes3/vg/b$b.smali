.class public final Lvg/b$b;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvg/b;->b(IILp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr9/i;",
        "Lx9/p<",
        "Lnc/a0;",
        "Lp9/d<",
        "-",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success<",
        "Ljava/util/List<",
        "+",
        "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;",
        ">;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.services.list.InstitutionListRepository$fetchInstitutionList$3"
    f = "InstitutionListRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic a:Lvg/b;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Lvg/b;IILp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvg/b;",
            "II",
            "Lp9/d<",
            "-",
            "Lvg/b$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lvg/b$b;->a:Lvg/b;

    iput p2, p0, Lvg/b$b;->b:I

    iput p3, p0, Lvg/b$b;->c:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lp9/d;)Lp9/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lp9/d<",
            "*>;)",
            "Lp9/d<",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    new-instance p1, Lvg/b$b;

    iget v0, p0, Lvg/b$b;->b:I

    iget v1, p0, Lvg/b$b;->c:I

    iget-object v2, p0, Lvg/b$b;->a:Lvg/b;

    invoke-direct {p1, v2, v0, v1, p2}, Lvg/b$b;-><init>(Lvg/b;IILp9/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lnc/a0;

    .line 2
    .line 3
    check-cast p2, Lp9/d;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lvg/b$b;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lvg/b$b;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lvg/b$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    iget v0, p0, Lvg/b$b;->b:I

    iget v1, p0, Lvg/b$b;->c:I

    iget-object v2, p0, Lvg/b$b;->a:Lvg/b;

    invoke-static {v2, v0, v1}, Lvg/b;->a(Lvg/b;II)Lio/realm/y0;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/y0;->h()Lio/realm/y0;

    move-result-object v0

    invoke-static {v0}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
