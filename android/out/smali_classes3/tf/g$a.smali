.class public final Ltf/g$a;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltf/g;->a(ILp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.MyCityListRepository"
    f = "MyCityListRepository.kt"
    l = {
        0x40,
        0x59
    }
    m = "fetchCityList"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ltf/g;

.field public c:I


# direct methods
.method public constructor <init>(Ltf/g;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltf/g;",
            "Lp9/d<",
            "-",
            "Ltf/g$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltf/g$a;->b:Ltf/g;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Ltf/g$a;->a:Ljava/lang/Object;

    iget p1, p0, Ltf/g$a;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ltf/g$a;->c:I

    iget-object p1, p0, Ltf/g$a;->b:Ltf/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ltf/g;->a(ILp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
