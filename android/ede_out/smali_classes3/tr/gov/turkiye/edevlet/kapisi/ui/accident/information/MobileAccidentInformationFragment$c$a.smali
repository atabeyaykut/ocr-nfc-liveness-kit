.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$c$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lx8/a;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$c$a;

    invoke-direct {v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$c$a;-><init>()V

    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$c$a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lx8/a;

    .line 2
    .line 3
    const-string v0, "$this$compress"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lx8/c;

    .line 9
    .line 10
    const/16 v1, 0xa

    .line 11
    .line 12
    invoke-direct {v0, v1, v1}, Lx8/c;-><init>(II)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p1, Lx8/a;->a:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 21
    .line 22
    return-object p1
.end method
