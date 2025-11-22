.class public final Lic/u$a;
.super Lic/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final c:Lic/u$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lic/u$a;

    invoke-direct {v0}, Lic/u$a;-><init>()V

    sput-object v0, Lic/u$a;->c:Lic/u$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lic/u$a$a;->a:Lic/u$a$a;

    const-string v1, "Boolean"

    invoke-direct {p0, v1, v0}, Lic/u;-><init>(Ljava/lang/String;Lx9/l;)V

    return-void
.end method
