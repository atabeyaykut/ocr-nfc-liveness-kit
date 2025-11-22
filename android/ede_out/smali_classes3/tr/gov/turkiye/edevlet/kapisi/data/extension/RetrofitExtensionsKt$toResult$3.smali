.class final Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt$toResult$3;
.super Lr9/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->toResult(Lud/c0;Lx9/p;Lp9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lr9/c;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.data.extension.RetrofitExtensionsKt"
    f = "RetrofitExtensions.kt"
    l = {
        0x2c
    }
    m = "toResult"
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt$toResult$3;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lr9/c;-><init>(Lp9/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt$toResult$3;->result:Ljava/lang/Object;

    iget p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt$toResult$3;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt$toResult$3;->label:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->toResult(Lud/c0;Lx9/p;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
