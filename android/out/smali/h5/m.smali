.class public final Lh5/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lh5/y;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final b:Lh5/x;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh5/y;

    invoke-direct {v0}, Lh5/y;-><init>()V

    sput-object v0, Lh5/m;->a:Lh5/y;

    new-instance v0, Lh5/x;

    invoke-direct {v0}, Lh5/x;-><init>()V

    sput-object v0, Lh5/m;->b:Lh5/x;

    return-void
.end method
