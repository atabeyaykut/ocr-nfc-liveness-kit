.class final Landroidx/camera/view/video/AutoValue_Metadata;
.super Landroidx/camera/view/video/Metadata;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/view/video/AutoValue_Metadata$Builder;
    }
.end annotation


# instance fields
.field private final location:Landroid/location/Location;


# direct methods
.method private constructor <init>(Landroid/location/Location;)V
    .locals 0
    .param p1    # Landroid/location/Location;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Landroidx/camera/view/video/Metadata;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/video/AutoValue_Metadata;->location:Landroid/location/Location;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/location/Location;Landroidx/camera/view/video/AutoValue_Metadata$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/camera/view/video/AutoValue_Metadata;-><init>(Landroid/location/Location;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/view/video/Metadata;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Landroidx/camera/view/video/Metadata;

    iget-object v1, p0, Landroidx/camera/view/video/AutoValue_Metadata;->location:Landroid/location/Location;

    invoke-virtual {p1}, Landroidx/camera/view/video/Metadata;->getLocation()Landroid/location/Location;

    move-result-object p1

    if-nez v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p1}, Landroid/location/Location;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/camera/view/video/AutoValue_Metadata;->location:Landroid/location/Location;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/camera/view/video/AutoValue_Metadata;->location:Landroid/location/Location;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/location/Location;->hashCode()I

    move-result v0

    :goto_0
    const v1, 0xf4243

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Metadata{location="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/view/video/AutoValue_Metadata;->location:Landroid/location/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
