.class public final Lic/g$c;
.super Lic/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final b:Lic/g$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lic/g$c;

    invoke-direct {v0}, Lic/g$c;-><init>()V

    sput-object v0, Lic/g$c;->b:Lic/g$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lic/g;-><init>(Z)V

    return-void
.end method
