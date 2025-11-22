.class public final synthetic Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$s;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# static fields
.field public static final a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$s;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$s;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$s;-><init>()V

    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$s;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$s;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-class v0, Lzg/k;

    const-string v1, "mediaListResult"

    const-string v2, "getMediaListResult()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListModel;"

    invoke-direct {p0, v0, v1, v2}, Lkotlin/jvm/internal/r;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lzg/k;

    .line 2
    .line 3
    iget-object p1, p1, Lzg/k;->f:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MediaListModel;

    .line 4
    .line 5
    return-object p1
.end method
