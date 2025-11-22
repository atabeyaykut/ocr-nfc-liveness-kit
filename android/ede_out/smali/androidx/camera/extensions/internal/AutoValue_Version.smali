.class final Landroidx/camera/extensions/internal/AutoValue_Version;
.super Landroidx/camera/extensions/internal/Version;
.source "SourceFile"


# instance fields
.field private final description:Ljava/lang/String;

.field private final major:I

.field private final minor:I

.field private final patch:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/extensions/internal/Version;-><init>()V

    iput p1, p0, Landroidx/camera/extensions/internal/AutoValue_Version;->major:I

    iput p2, p0, Landroidx/camera/extensions/internal/AutoValue_Version;->minor:I

    iput p3, p0, Landroidx/camera/extensions/internal/AutoValue_Version;->patch:I

    if-eqz p4, :cond_0

    iput-object p4, p0, Landroidx/camera/extensions/internal/AutoValue_Version;->description:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null description"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/camera/extensions/internal/AutoValue_Version;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getMajor()I
    .locals 1

    iget v0, p0, Landroidx/camera/extensions/internal/AutoValue_Version;->major:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    iget v0, p0, Landroidx/camera/extensions/internal/AutoValue_Version;->minor:I

    return v0
.end method

.method public getPatch()I
    .locals 1

    iget v0, p0, Landroidx/camera/extensions/internal/AutoValue_Version;->patch:I

    return v0
.end method
