.class public final Luf/b$a;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luf/b;->b(IILp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.page.MyCityRepository"
    f = "MyCityRepository.kt"
    l = {
        0x4b,
        0x65
    }
    m = "fetchInstitutionList"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Luf/b;

.field public c:I


# direct methods
.method public constructor <init>(Luf/b;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luf/b;",
            "Lp9/d<",
            "-",
            "Luf/b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Luf/b$a;->b:Luf/b;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Luf/b$a;->a:Ljava/lang/Object;

    iget p1, p0, Luf/b$a;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Luf/b$a;->c:I

    iget-object p1, p0, Luf/b$a;->b:Luf/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Luf/b;->b(IILp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
