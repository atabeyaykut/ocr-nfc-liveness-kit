.class public final Lzg/i$e;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzg/i;->j(Ljava/lang/String;Lp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveRepository"
    f = "MobileAccidentApproveRepository.kt"
    l = {
        0x127,
        0x128
    }
    m = "provideMediaList"
.end annotation


# instance fields
.field public a:Lzg/i;

.field public b:Ljava/lang/String;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lzg/i;

.field public e:I


# direct methods
.method public constructor <init>(Lzg/i;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzg/i;",
            "Lp9/d<",
            "-",
            "Lzg/i$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lzg/i$e;->d:Lzg/i;

    invoke-direct {p0, p2}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lzg/i$e;->c:Ljava/lang/Object;

    iget p1, p0, Lzg/i$e;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lzg/i$e;->e:I

    iget-object p1, p0, Lzg/i$e;->d:Lzg/i;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lzg/i;->j(Ljava/lang/String;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
