.class public final synthetic Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$i;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# static fields
.field public static final a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$i;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$i;-><init>()V

    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$i;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$i;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-class v0, Lhh/f;

    const-string v1, "uploadedMediaIndex"

    const-string v2, "getUploadedMediaIndex()Ljava/lang/Integer;"

    invoke-direct {p0, v0, v1, v2}, Lkotlin/jvm/internal/r;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lhh/f;

    .line 2
    .line 3
    iget-object p1, p1, Lhh/f;->g:Ljava/lang/Integer;

    .line 4
    .line 5
    return-object p1
.end method
