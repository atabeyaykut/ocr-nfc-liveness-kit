.class public Lcom/shockwave/pdfium/PdfDocument;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shockwave/pdfium/PdfDocument$Bookmark;,
        Lcom/shockwave/pdfium/PdfDocument$Meta;
    }
.end annotation


# instance fields
.field public a:J

.field public b:Landroid/os/ParcelFileDescriptor;

.field public final c:Landroidx/collection/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/shockwave/pdfium/PdfDocument;->c:Landroidx/collection/ArrayMap;

    return-void
.end method
