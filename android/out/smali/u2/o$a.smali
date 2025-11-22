.class public final Lu2/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu2/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lu2/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu2/o;

    invoke-direct {v0}, Lu2/o;-><init>()V

    sput-object v0, Lu2/o$a;->a:Lu2/o;

    return-void
.end method
