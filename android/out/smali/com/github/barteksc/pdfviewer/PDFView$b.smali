.class public final enum Lcom/github/barteksc/pdfviewer/PDFView$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/barteksc/pdfviewer/PDFView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/barteksc/pdfviewer/PDFView$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/github/barteksc/pdfviewer/PDFView$b;

.field public static final enum b:Lcom/github/barteksc/pdfviewer/PDFView$b;

.field public static final enum c:Lcom/github/barteksc/pdfviewer/PDFView$b;

.field public static final synthetic d:[Lcom/github/barteksc/pdfviewer/PDFView$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$b;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/barteksc/pdfviewer/PDFView$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/barteksc/pdfviewer/PDFView$b;->a:Lcom/github/barteksc/pdfviewer/PDFView$b;

    new-instance v1, Lcom/github/barteksc/pdfviewer/PDFView$b;

    const-string v3, "START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/github/barteksc/pdfviewer/PDFView$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/barteksc/pdfviewer/PDFView$b;->b:Lcom/github/barteksc/pdfviewer/PDFView$b;

    new-instance v3, Lcom/github/barteksc/pdfviewer/PDFView$b;

    const-string v5, "END"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/github/barteksc/pdfviewer/PDFView$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/github/barteksc/pdfviewer/PDFView$b;->c:Lcom/github/barteksc/pdfviewer/PDFView$b;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/github/barteksc/pdfviewer/PDFView$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/github/barteksc/pdfviewer/PDFView$b;->d:[Lcom/github/barteksc/pdfviewer/PDFView$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/barteksc/pdfviewer/PDFView$b;
    .locals 1

    const-class v0, Lcom/github/barteksc/pdfviewer/PDFView$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/barteksc/pdfviewer/PDFView$b;

    return-object p0
.end method

.method public static values()[Lcom/github/barteksc/pdfviewer/PDFView$b;
    .locals 1

    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$b;->d:[Lcom/github/barteksc/pdfviewer/PDFView$b;

    invoke-virtual {v0}, [Lcom/github/barteksc/pdfviewer/PDFView$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/barteksc/pdfviewer/PDFView$b;

    return-object v0
.end method
