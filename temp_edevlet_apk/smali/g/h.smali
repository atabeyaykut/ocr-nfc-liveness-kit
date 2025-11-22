.class public final Lg/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lg/h;


# instance fields
.field public final a:Z

.field public final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lg/h;-><init>(ZI)V

    sput-object v0, Lg/h;->c:Lg/h;

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lg/h;->a:Z

    iput p2, p0, Lg/h;->b:I

    return-void
.end method
