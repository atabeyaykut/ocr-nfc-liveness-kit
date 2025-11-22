.class public final Luh/a$a;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luh/a;->a(Lp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.policy.MobileAccidentPolicyRepository"
    f = "MobileAccidentPolicyRepository.kt"
    l = {
        0x25
    }
    m = "providePolicyList"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Luh/a;

.field public c:I


# direct methods
.method public constructor <init>(Luh/a;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luh/a;",
            "Lp9/d<",
            "-",
            "Luh/a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Luh/a$a;->b:Luh/a;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Luh/a$a;->a:Ljava/lang/Object;

    iget p1, p0, Luh/a$a;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Luh/a$a;->c:I

    iget-object p1, p0, Luh/a$a;->b:Luh/a;

    invoke-virtual {p1, p0}, Luh/a;->a(Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
