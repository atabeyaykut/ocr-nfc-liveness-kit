.class public final Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnc/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/nfc/tech/IsoDep;

.field public final b:Lorg/jmrtd/BACKeySpec;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Lnc/e1;

.field public final synthetic n:Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;Landroid/nfc/tech/IsoDep;Lorg/jmrtd/BACKey;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;->n:Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;->a:Landroid/nfc/tech/IsoDep;

    .line 7
    .line 8
    iput-object p3, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;->b:Lorg/jmrtd/BACKeySpec;

    .line 9
    .line 10
    iput-object p4, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;->c:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;->d:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;->e:Ljava/lang/String;

    .line 15
    .line 16
    const-string p1, "SHA1"

    .line 17
    .line 18
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;->k:Ljava/lang/String;

    .line 19
    .line 20
    const-string p1, "SHA256WithRSA/ISO9796-2"

    .line 21
    .line 22
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;->l:Ljava/lang/String;

    .line 23
    .line 24
    new-instance p1, Lnc/e1;

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-direct {p1, p2}, Lnc/e1;-><init>(Lnc/b1;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;->m:Lnc/e1;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final getCoroutineContext()Lp9/f;
    .locals 2

    .line 1
    sget-object v0, Lnc/j0;->a:Lkotlinx/coroutines/scheduling/c;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/internal/m;->a:Lnc/k1;

    .line 4
    .line 5
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;->m:Lnc/e1;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lp9/a;->plus(Lp9/f;)Lp9/f;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
